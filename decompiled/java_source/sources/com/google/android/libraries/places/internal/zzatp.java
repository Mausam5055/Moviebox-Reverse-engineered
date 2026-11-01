package com.google.android.libraries.places.internal;

import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzatp extends zzarv {
    private final zzatu zza;

    public zzatp(zzatu zzatuVar) {
        this.zza = zzatuVar;
    }

    @Override // com.google.android.libraries.places.internal.zzavn
    public final /* synthetic */ Object zzb(zzasq zzasqVar, zzatf zzatfVar) throws zzauf {
        int i11 = zzatu.zzd;
        zzatu zzatuVarZzat = this.zza.zzat();
        try {
            zzavt zzavtVarZzb = zzavp.zza().zzb(zzatuVarZzat.getClass());
            zzavtVarZzb.zzf(zzatuVarZzat, zzasr.zzq(zzasqVar), zzatfVar);
            zzavtVarZzb.zzd(zzatuVarZzat);
            return zzatuVarZzat;
        } catch (zzauf e11) {
            e = e11;
            if (e.zzl()) {
                e = new zzauf(e);
            }
            e.zzh(zzatuVarZzat);
            throw e;
        } catch (zzawm e12) {
            zzauf zzaufVarZza = e12.zza();
            zzaufVarZza.zzh(zzatuVarZzat);
            throw zzaufVarZza;
        } catch (IOException e13) {
            if (e13.getCause() instanceof zzauf) {
                throw ((zzauf) e13.getCause());
            }
            zzauf zzaufVar = new zzauf(e13);
            zzaufVar.zzh(zzatuVarZzat);
            throw zzaufVar;
        } catch (RuntimeException e14) {
            if (e14.getCause() instanceof zzauf) {
                throw ((zzauf) e14.getCause());
            }
            throw e14;
        }
    }
}
