package com.google.android.gms.internal.play_billing;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfj extends zzdh implements RandomAccess, zzfk {

    @Deprecated
    public static final zzfk zza;
    private static final zzfj zzb;
    private final List zzc;

    static {
        zzfj zzfjVar = new zzfj(false);
        zzb = zzfjVar;
        zza = zzfjVar;
    }

    public zzfj() {
        this(10);
    }

    public zzfj(int i11) {
        ArrayList arrayList = new ArrayList(i11);
        super(true);
        this.zzc = arrayList;
    }

    private zzfj(ArrayList arrayList) {
        super(true);
        this.zzc = arrayList;
    }

    private zzfj(boolean z10) {
        super(false);
        this.zzc = Collections.emptyList();
    }

    private static String zzi(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return obj instanceof zzdw ? ((zzdw) obj).zzm(zzfd.zzb) : zzfd.zzd((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i11, Object obj) {
        zza();
        this.zzc.add(i11, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdh, java.util.AbstractList, java.util.List
    public final boolean addAll(int i11, Collection collection) {
        zza();
        if (collection instanceof zzfk) {
            collection = ((zzfk) collection).zzh();
        }
        boolean zAddAll = this.zzc.addAll(i11, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdh, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdh, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zza();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i11) {
        zza();
        Object objRemove = this.zzc.remove(i11);
        ((AbstractList) this).modCount++;
        return zzi(objRemove);
    }

    @Override // com.google.android.gms.internal.play_billing.zzdh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i11, Object obj) {
        zza();
        return zzi(this.zzc.set(i11, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfc
    public final /* bridge */ /* synthetic */ zzfc zzd(int i11) {
        if (i11 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i11);
        arrayList.addAll(this.zzc);
        return new zzfj(arrayList);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfk
    public final zzfk zze() {
        return zzc() ? new zzhi(this) : this;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfk
    public final Object zzf(int i11) {
        return this.zzc.get(i11);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final String get(int i11) {
        Object obj = this.zzc.get(i11);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzdw) {
            zzdw zzdwVar = (zzdw) obj;
            String strZzm = zzdwVar.zzm(zzfd.zzb);
            if (zzdwVar.zzi()) {
                this.zzc.set(i11, strZzm);
            }
            return strZzm;
        }
        byte[] bArr = (byte[]) obj;
        String strZzd = zzfd.zzd(bArr);
        if (zzhs.zzd(bArr)) {
            this.zzc.set(i11, strZzd);
        }
        return strZzd;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfk
    public final List zzh() {
        return Collections.unmodifiableList(this.zzc);
    }
}
