# Kiểm tra xem người dùng có truyền vào nội dung commit hay không
if (-not $args[0]) {
    Write-Host "please enter the content of the commit."
    exit 1
}

# Lấy ngày giờ hiện tại
$current_date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Tạo thông điệp commit bao gồm cả nội dung và ngày giờ
$commit_message = "$current_date`: $($args[0])"

# Thực hiện các lệnh git
git add .
Write-Host "commit message: $commit_message"
git commit -m "$commit_message"
Write-Host "starting push"

# Lấy tên nhánh hiện tại
$branch_name = git rev-parse --abbrev-ref HEAD
git push origin $branch_name
