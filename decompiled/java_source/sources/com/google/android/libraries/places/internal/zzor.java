package com.google.android.libraries.places.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzor extends zzoa {
    static final zzoa zza = new zzor(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzor(Object obj, Object[] objArr, int i11) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i11;
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [short[], byte[]], vars: [r5v3 ??, r5v10 ??, r5v6 ??, r5v11 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.rerun(InitCodeVariables.java:36)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.trySplitConstInsns(FixTypesVisitor.java:580)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        */
    static com.google.android.libraries.places.internal.zzor zzh(int r17, java.lang.Object[] r18, com.google.android.libraries.places.internal.zznz r19) {
        /*
            Method dump skipped, instruction units count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.libraries.places.internal.zzor.zzh(int, java.lang.Object[], com.google.android.libraries.places.internal.zznz):com.google.android.libraries.places.internal.zzor");
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.libraries.places.internal.zzoa, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            int i11 = this.zzd;
            Object[] objArr = this.zzb;
            if (i11 == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.zzc;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iZza = zznq.zza(obj.hashCode());
                    while (true) {
                        int i12 = iZza & length;
                        int i13 = bArr[i12] & 255;
                        if (i13 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i13])) {
                            obj2 = objArr[i13 ^ 1];
                        } else {
                            iZza = i12 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iZza2 = zznq.zza(obj.hashCode());
                    while (true) {
                        int i14 = iZza2 & length2;
                        char c11 = (char) sArr[i14];
                        if (c11 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c11])) {
                            obj2 = objArr[c11 ^ 1];
                        } else {
                            iZza2 = i14 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iZza3 = zznq.zza(obj.hashCode());
                    while (true) {
                        int i15 = iZza3 & length3;
                        int i16 = iArr[i15];
                        if (i16 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i16])) {
                            obj2 = objArr[i16 ^ 1];
                        } else {
                            iZza3 = i15 + 1;
                        }
                    }
                    obj2 = null;
                }
            }
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.libraries.places.internal.zzoa
    final zznt zza() {
        return new zzoq(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.libraries.places.internal.zzoa
    final zzob zze() {
        return new zzoo(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.libraries.places.internal.zzoa
    final zzob zzf() {
        return new zzop(this, new zzoq(this.zzb, 0, this.zzd));
    }
}
