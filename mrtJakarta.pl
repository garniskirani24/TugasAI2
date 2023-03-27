terhubung(kebayoran, harmoni, jakarta_kota).
terhubung(tanah_abang, kebayoran, tangerang).
terhubung(tanah_abang, sudirman, lebak_bulus).
terhubung(sudirman, tanah_abang, bandara).
terhubung(sudirman, blok_m, lebak_bulus).
terhubung(sudirman, harmoni, jakarta_kota).

berdekatan(X,Y) :- terhubung(X,_,Y).
berdekatan(X,Y) :- terhubung(X,Y,_).

dapat_dijangkau(X, Y) :- terhubung(X,Y,_).
dapat_dijangkau(X, Y) :- (terhubung(X,Z,_); terhubung(X,_,Z)), dapat_dijangkau(Z, Y).
