package com.google.android.libraries.places.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzaup extends zzaut {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzaup() {
        throw null;
    }

    /* synthetic */ zzaup(zzauo zzauoVar) {
        super(null);
    }

    private static List zzf(Object obj, long j11, int i11) {
        List list;
        List listZzd;
        List list2 = (List) zzawx.zzf(obj, j11);
        if (list2.isEmpty()) {
            if (list2 instanceof zzaun) {
                listZzd = new zzaum(i11);
            } else {
                listZzd = ((list2 instanceof zzavo) && (list2 instanceof zzauc)) ? ((zzauc) list2).zzd(i11) : new ArrayList(i11);
            }
            zzawx.zzs(obj, j11, listZzd);
            return listZzd;
        }
        if (zza.isAssignableFrom(list2.getClass())) {
            ArrayList arrayList = new ArrayList(list2.size() + i11);
            arrayList.addAll(list2);
            zzawx.zzs(obj, j11, arrayList);
            list = arrayList;
        } else {
            if (!(list2 instanceof zzaws)) {
                if (!(list2 instanceof zzavo) || !(list2 instanceof zzauc)) {
                    return list2;
                }
                zzauc zzaucVar = (zzauc) list2;
                if (zzaucVar.zzc()) {
                    return list2;
                }
                zzauc zzaucVarZzd = zzaucVar.zzd(list2.size() + i11);
                zzawx.zzs(obj, j11, zzaucVarZzd);
                return zzaucVarZzd;
            }
            zzaum zzaumVar = new zzaum(list2.size() + i11);
            zzaumVar.addAll(zzaumVar.size(), (zzaws) list2);
            zzawx.zzs(obj, j11, zzaumVar);
            list = zzaumVar;
        }
        return list;
    }

    @Override // com.google.android.libraries.places.internal.zzaut
    final List zza(Object obj, long j11) {
        return zzf(obj, j11, 10);
    }

    @Override // com.google.android.libraries.places.internal.zzaut
    final void zzb(Object obj, long j11) {
        Object objUnmodifiableList;
        List list = (List) zzawx.zzf(obj, j11);
        if (list instanceof zzaun) {
            objUnmodifiableList = ((zzaun) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzavo) && (list instanceof zzauc)) {
                zzauc zzaucVar = (zzauc) list;
                if (zzaucVar.zzc()) {
                    zzaucVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzawx.zzs(obj, j11, objUnmodifiableList);
    }

    @Override // com.google.android.libraries.places.internal.zzaut
    final void zzc(Object obj, Object obj2, long j11) {
        List list = (List) zzawx.zzf(obj2, j11);
        List listZzf = zzf(obj, j11, list.size());
        int size = listZzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            listZzf.addAll(list);
        }
        if (size > 0) {
            list = listZzf;
        }
        zzawx.zzs(obj, j11, list);
    }
}
