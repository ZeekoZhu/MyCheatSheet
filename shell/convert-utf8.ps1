filter IsTextFile {
    $mime = $(file -b --mime-type $_)
    if ($mime.StartsWith('text')) {
        $_
    }
}

filter IsNotUtf8Encoding {
    isutf8 $_ | Out-Null
    if ($LASTEXITCODE -ne 0) {
        $_
    }
}

filter ConvertToUtf8 {
    $result = iconv -f gb18030 -t utf8 $_
    Set-Content -Value $result -Path $_ -Encoding utf8NoBOM
    $_
}


git ls-files --directory MigrateToCore/ `
| IsTextFile | IsNotUtf8Encoding `
| ConvertToUtf8
