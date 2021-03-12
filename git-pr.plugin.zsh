if [[ $PMSPEC != *b* ]] {
    path+=( "${0:h}/bin" )
}
if [[ $PMSPEC != *f* ]] {
    fpath+=( "${0:h}/functions" )
}
