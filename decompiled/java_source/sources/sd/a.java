package sd;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
abstract class a {
    static id.a a(List list) {
        int size = list.size() * 2;
        int i11 = size - 1;
        if (((b) list.get(list.size() - 1)).c() == null) {
            i11 = size - 2;
        }
        id.a aVar = new id.a(i11 * 12);
        int i12 = 0;
        int iB = ((b) list.get(0)).c().b();
        for (int i13 = 11; i13 >= 0; i13--) {
            if (((1 << i13) & iB) != 0) {
                aVar.r(i12);
            }
            i12++;
        }
        for (int i14 = 1; i14 < list.size(); i14++) {
            b bVar = (b) list.get(i14);
            int iB2 = bVar.b().b();
            for (int i15 = 11; i15 >= 0; i15--) {
                if (((1 << i15) & iB2) != 0) {
                    aVar.r(i12);
                }
                i12++;
            }
            if (bVar.c() != null) {
                int iB3 = bVar.c().b();
                for (int i16 = 11; i16 >= 0; i16--) {
                    if (((1 << i16) & iB3) != 0) {
                        aVar.r(i12);
                    }
                    i12++;
                }
            }
        }
        return aVar;
    }
}
