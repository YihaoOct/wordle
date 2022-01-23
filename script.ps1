$word = [Text.Encoding]::Utf8.GetString([Convert]::FromBase64String($OctopusParameters["Answer"]))
$index = [int]$OctopusParameters["Ocotpus.Environment.Name"] - 1
$letter = $OctopusParameters["Guess"][$index]

if ($letter -eq $word[$index]) {
	Write-Host "The letter $letter is in the word and in the correct spot."
} elseif ($word.Contains($letter)) {
	Write-Warning "The letter $letter is in the word but in the wrong spot."
} else {
	Write-Error "The letter $letter is not in the word in any spot."
}