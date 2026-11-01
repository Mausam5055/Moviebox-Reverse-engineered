package com.google.android.gms.internal.play_billing;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
public final class zzfg {
    public static final zzfg zza;
    public static final zzfg zzb;
    public static final zzfg zzc;
    public static final zzfg zzd;
    public static final zzfg zze;
    public static final zzfg zzf;
    public static final zzfg zzg;
    public static final zzfg zzh;
    public static final zzfg zzi;
    public static final zzfg zzj;
    private static final /* synthetic */ zzfg[] zzk;
    private final Class zzl;
    private final Class zzm;
    private final Object zzn;

    static {
        zzfg zzfgVar = new zzfg("VOID", 0, Void.class, Void.class, null);
        zza = zzfgVar;
        Class cls = Integer.TYPE;
        zzfg zzfgVar2 = new zzfg("INT", 1, cls, Integer.class, 0);
        zzb = zzfgVar2;
        zzfg zzfgVar3 = new zzfg("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzfgVar3;
        zzfg zzfgVar4 = new zzfg("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzfgVar4;
        zzfg zzfgVar5 = new zzfg("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzfgVar5;
        zzfg zzfgVar6 = new zzfg("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzfgVar6;
        zzfg zzfgVar7 = new zzfg("STRING", 6, String.class, String.class, "");
        zzg = zzfgVar7;
        zzfg zzfgVar8 = new zzfg("BYTE_STRING", 7, zzdw.class, zzdw.class, zzdw.zzb);
        zzh = zzfgVar8;
        zzfg zzfgVar9 = new zzfg("ENUM", 8, cls, Integer.class, null);
        zzi = zzfgVar9;
        zzfg zzfgVar10 = new zzfg("MESSAGE", 9, Object.class, Object.class, null);
        zzj = zzfgVar10;
        zzk = new zzfg[]{zzfgVar, zzfgVar2, zzfgVar3, zzfgVar4, zzfgVar5, zzfgVar6, zzfgVar7, zzfgVar8, zzfgVar9, zzfgVar10};
    }

    private zzfg(String str, int i11, Class cls, Class cls2, Object obj) {
        super(str, i11);
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzfg[] values() {
        return (zzfg[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzm;
    }
}
