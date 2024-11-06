function convert-csv-to-json() {
    csv_file=$1
    if [ -z "$csv_file" ]; then
        echo "csv_file required"
        return 1
    fi
    python3 -c "import csv, json; print(json.dumps(list(csv.DictReader(open('$csv_file')))))"
}

function convert-json-to-csv() {
    json_file=$1
    if [ -z "$json_file" ]; then
        echo "json_file required"
        return 1
    fi
    jq -r 'map({(. | keys_unsorted[]) : .[. | keys_unsorted[]]}) | add | @csv' $json_file
}
