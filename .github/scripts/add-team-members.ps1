# Script to add students to GROUP 4E team
# Organization: IS-PROJECT-2026
# Team: group-4e

$ORG = "IS-PROJECT-2026"
$TEAM = "group-4e"

# Array of usernames to add
$STUDENTS = @(
  "emmanuel-mukirakani",
  "arukevinsash",
  "ammiriti",
  "MarlynMuchina",
  "NginaK",
  "Theedxctor",
  "Michelle-Mutuma",
  "Sagooparneet",
  "D3XK1M",
  "LMaithya",
  "dhb001",
  "Nooman29",
  "Eeshan-Vaghjiani",
  "KMandela2003",
  "gichuki00",
  "catojaloch",
  "O-kware",
  "G-Khalayi",
  "Madhaparia-Krishna",
  "Bigingi",
  "Ianzakiyanoorian-omwenga",
  "BenedictMuu",
  "ojakiragu",
  "Keittah",
  "Seweglenexe",
  "DelightW",
  "Gibitoleo",
  "Jaldy178",
  "T-Nkiru",
  "denzel-murimi",
  "Tyejaedon",
  "LornahNdirimah",
  "taneiii",
  "LincyMuema",
  "SWambati",
  "Tevin-Muchiri",
  "KAnab20",
  "fak3unr3a1",
  "Daniellagotthesauce",
  "AlbaDmaster",
  "NDANUKL",
  "LuisDulo",
  "3antanajason",
  "AnyangoF",
  "Chelule",
  "iphiltait",
  "pro11play"
)

# Check if GitHub CLI is installed
try {
  gh --version | Out-Null
} catch {
  Write-Host "❌ GitHub CLI (gh) is not installed." -ForegroundColor Red
  Write-Host "Visit: https://cli.github.com/" -ForegroundColor Yellow
  exit 1
}

# Check if authenticated
$authStatus = gh auth status 2>&1
if ($LASTEXITCODE -ne 0) {
  Write-Host "❌ Not authenticated with GitHub CLI. Run 'gh auth login' first." -ForegroundColor Red
  exit 1
}

Write-Host "🚀 Adding $($STUDENTS.Count) students to $ORG/$TEAM team..." -ForegroundColor Cyan
Write-Host ""

$successCount = 0
$failedCount = 0
$failedUsers = @()

foreach ($user in $STUDENTS) {
  Write-Host -NoNewline "Adding @$user... "
  
  $result = gh api /orgs/$ORG/teams/$TEAM/memberships/$user -X PUT -f role=member 2>&1
  
  if ($LASTEXITCODE -eq 0) {
    Write-Host "✅" -ForegroundColor Green
    $successCount++
  } else {
    Write-Host "❌" -ForegroundColor Red
    $failedCount++
    $failedUsers += $user
  }
}

Write-Host ""
Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan
Write-Host "📊 Summary:" -ForegroundColor Cyan
Write-Host "✅ Successfully added: $successCount" -ForegroundColor Green
Write-Host "❌ Failed: $failedCount" -ForegroundColor Red

if ($failedCount -gt 0) {
  Write-Host ""
  Write-Host "Failed users:" -ForegroundColor Yellow
  foreach ($user in $failedUsers) {
    Write-Host "  - @$user" -ForegroundColor Yellow
  }
}

Write-Host "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" -ForegroundColor Cyan