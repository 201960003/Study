# ������ �����մϴ�.
fs = require "fs"

# ������ �н��ϴ�.
fs.readFile "textfile.txt", "utf8", (error, data) ->
    # ������ �߻��ϸ� ���ٷ� ����
    return console.log error if error
    # ���ϴ� ó��
    console.log data
# ������ ���ϴ�.
fs.writeFile "textfile.txt", "Hello World .. !", "utf8", (error) ->
    # ������ �߻��ϸ� ���ٷ� ����
    return console.log error if error
    # ���ϴ� ó��
    console.log "FILE WRITE COMPLETE"
