package com.google.android.gms.internal.play_billing;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class zzfm extends zzfq {
    private static final Class zza = Collections.unmodifiableList(Collections.emptyList()).getClass();

    private zzfm() {
        super(null);
    }

    /* synthetic */ zzfm(zzfl zzflVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfq
    final void zza(Object obj, long j11) {
        Object objUnmodifiableList;
        List list = (List) zzhn.zzf(obj, j11);
        if (list instanceof zzfk) {
            objUnmodifiableList = ((zzfk) list).zze();
        } else {
            if (zza.isAssignableFrom(list.getClass())) {
                return;
            }
            if ((list instanceof zzgj) && (list instanceof zzfc)) {
                zzfc zzfcVar = (zzfc) list;
                if (zzfcVar.zzc()) {
                    zzfcVar.zzb();
                    return;
                }
                return;
            }
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        zzhn.zzs(obj, j11, objUnmodifiableList);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfq
    final void zzb(Object obj, Object obj2, long j11) {
        List list;
        List list2;
        List listZzd;
        List list3 = (List) zzhn.zzf(obj2, j11);
        int size = list3.size();
        List list4 = (List) zzhn.zzf(obj, j11);
        if (list4.isEmpty()) {
            if (list4 instanceof zzfk) {
                listZzd = new zzfj(size);
            } else {
                listZzd = ((list4 instanceof zzgj) && (list4 instanceof zzfc)) ? ((zzfc) list4).zzd(size) : new ArrayList(size);
            }
            zzhn.zzs(obj, j11, listZzd);
            list2 = listZzd;
        } else {
            if (zza.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                zzhn.zzs(obj, j11, arrayList);
                list = arrayList;
            } else if (list4 instanceof zzhi) {
                zzfj zzfjVar = new zzfj(list4.size() + size);
                zzfjVar.addAll(zzfjVar.size(), (zzhi) list4);
                zzhn.zzs(obj, j11, zzfjVar);
                list = zzfjVar;
            } else if ((list4 instanceof zzgj) && (list4 instanceof zzfc)) {
                zzfc zzfcVar = (zzfc) list4;
                if (!zzfcVar.zzc()) {
                    list2 = list4;
                    list2 = list4;
                    list2 = list4;
                    zzfc zzfcVarZzd = zzfcVar.zzd(list4.size() + size);
                    zzhn.zzs(obj, j11, zzfcVarZzd);
                    list2 = zzfcVarZzd;
                }
            }
            list2 = list;
        }
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        list2 = list4;
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        zzhn.zzs(obj, j11, list3);
    }
}
