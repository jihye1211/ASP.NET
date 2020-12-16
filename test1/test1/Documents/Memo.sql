--[1] 한 줄 메모장(Memos) 테이블 설계
Create Table dbo.book
(
Num Int identity(1,1) Primary Key, --번호
TxtTitle NVarChar(20) Not null, --제목
TxtUser NVarChar(25) Not null, --유저
Password NVarChar(100) Null, --비밀번호
TxtWrite NVarChar(150) Not Null, --메모
)
Go
--[2] SQL 예시문 6가지 작성
--[a] 입력 예시문: Insert문: FrmMemoWrite.aspx
--[b] 출력 예시문: Select문: FrmemoList.aspx
Select Num, User, Password, txtWrite
From Memos Order By Num Desc
Go
--[c] 상세 예시문: Update문: FrmMemoView.aspx
Select Num, Name, Email, Title, PostDate, PostIP
From Memos Where Num =1
Go
--[d] 수정 예시문: Update문: FrmMemoModify.aspx
Begin Tran
Update Memos
Set
Name = N'백두산',
Email = N'admin@devlec.com',
Title = N'백두산입니다.',
PostIP = N'127.0.0.1'
Where
Num =-1
--RollBack Tran
Commit tran
Go
--[e] 삭제 예시문: delete문: FrmMemoDelete.aspx
Begin Tran
Delete Memos
Where Num =10
--RollBack Tran
Go
--[f] 검색 예시문: Select문: FrmMemoSearch.aspx
--이메일에 'r'가 들어가는 자료의 모든 필드
--번호의 역순으로 검색
Select Num, Name, Email, Title, PostDate
From Memos
Where
Name='레드플러스'
Or
Email Like '%r%'
Order By Num Desc
Go
--[3] SQL 저장 프로시저 6가지 작성
--[a] 메모 입력용 저장 프로시저
Create Procedure dbo.WriteMemo
(
@TxtTitle NVarChar(20),
@TxtUser NVarChar(25),
@Password NVarChar(100),
@TxtWrite NVarChar(150)
)
As
Insert Memos(TxtTitle, TxtUser, Password, TxtWrite)
Values(@TxtTitle, @TxtUser, @Password, @TxtWrite)
Go
--[b] 메모 출력용 저장 프로시저
Create Proc dbo.ListMemo
As
Select Num, TxtTItle, TxtUser, Password, TxtWrite
From Memos Order By Num Desc
Go
--[c] 메모 상세보기용 저장 프로시저
Create Proc dbo.ViewMemo
(
@Num Int
)
As
Select Num, TxtTItle, TxtUser, Password, TxtWrite
From Memos
Where Num = @Num
Go
--[d] 메모 데이터 수정용 저장 프로시저
Create Proc dbo.ModifyMemo
(
@TxtTitle NVarChar(20),
@TxtUser NVarChar(25),
@Password NVarChar(100),
@TxtWrite NVarChar(150)
)
As
Begin Transaction
Update Memos
set
TxtTitle = @TxtTitle,
TxtUser = @TxtUser,
Password = @Password
Where Num = @Num
Commit Transaction
Go
--[e] 메모 데이터 삭제용 저장 프로시저
Create Proc dbo.DeleteMemo
(
@Num Int
)
As
Delete Memos
Where Num = @Num
Go
--[f] 메모 데이터 검색용 저장 프로시저 (동적SQL 사용)
Create Proc dbo.SearchMemo
(
@SearchField NVarChar(10),
@SearchQuery NVarChar(50)
)
--With Encryption -- 현재 SP문 암호화
As
Declare @strSql NVarChar(150) --변수 선언
Set @strSql =
'
Select Num, TxtTItle, TxtUser, Password, TxtWrite
From Memos
Where '+@SearchField+'Like
N''%'+@SearchQuery+'%''
Order By Num Desc
'
--Print @strSql
Exec (@strSql) --완성된 SQL문 실행
Go