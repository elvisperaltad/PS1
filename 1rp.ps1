Write-Host "Please select an option (1-2)"
Write-Host "1 - Turn off"
Write-Host "2 - Cancel turn off"
$answer = Read-Host "Enter you choice (1-2)"

function shut{

    switch ($answer) {
        1 {
            $secon_time = Read-Host "Introduce a time"
            $hours_time = [int]$secon_time * 60 * 60
            shutdown -s -t $hours_time
            Write-Host "the computer will turn off in:  $($hours_time/3600) hours"
          }
        2{
            shutdown -a
        }
        Default {
            $answer = Read-Host Enter a valid number between 1-2
            shut
        }
    }
}

shut

