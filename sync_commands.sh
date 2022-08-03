#!/bin/bash

# CReate the deck
curl localhost:8765 -X POST -d '{"action": "createDeck", "version": 6, "params": { "deck": "FOOBAR::BAZ"} }'

# Add cards / addNote
curl localhost:8765 -X POST -d '{ "action": "addNote",     "version": 6,     "params": {         "note": {             "deckName": "FOOBAR",             "modelName": "Basic",             "fields": {                 "Front": "front content",                 "Back": "back content"             } } } }' 

            # "tags": [
            #     "yomichan"
            # ]

            # "options": {
            #     "allowDuplicate": false,
            #     "duplicateScope": "deck",
            #     "duplicateScopeOptions": {
            #         "deckName": "Default",
            #         "checkChildren": false,
            #         "checkAllModels": false
            #     } 

# Test

curl localhost:8765 -X POST -d '
{
    "action": "addNote",
    "version": 6,
    "params": {
        "note": {
            "deckName": "FOOBAR::BAZ",
            "modelName": "Basic",
            "fields": {
                "Front": "Front Card"
                "Back": "BAck card"
            },
            "options": {
                "allowDuplicate": false,
                "duplicateScope": "deck",
                "duplicateScopeOptions": {
                    "deckName": "Default",
                    "checkChildren": false,
                    "checkAllModels": false
                }
            },
        }
    }
}'



# ,
            # "audio": [{
            #     "url": "https://assets.languagepod101.com/dictionary/japanese/audiomp3.php?kanji=猫&kana=ねこ",
            #     "filename": "yomichan_ねこ_猫.mp3",
            #     "skipHash": "7e2c2f954ef6051373ba916f000168dc",
            #     "fields": [
            #         "Front"
            #     ]
            # }],
            # "video": [{
            #     "url": "https://cdn.videvo.net/videvo_files/video/free/2015-06/small_watermarked/Contador_Glam_preview.mp4",
            #     "filename": "countdown.mp4",
            #     "skipHash": "4117e8aab0d37534d9c8eac362388bbe",
            #     "fields": [
            #         "Back"
            #     ]
            # }],
            # "picture": [{
            #     "url": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/A_black_cat_named_Tilly.jpg/220px-A_black_cat_named_Tilly.jpg",
            #     "filename": "black_cat.jpg",
            #     "skipHash": "8d6e4646dfae812bf39651b59d7429ce",
            #     "fields": [
            #         "Back"
            #     ]
            # }]
# 
