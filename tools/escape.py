import trans
import re
def escape_to_folder( word ):
    word = re.sub(r"[ \(\)\.\-\,\/]+", "_", word )
    word = re.sub(r"_$", "", word )
    word = word.encode( 'trans' ).lower()
    return word
