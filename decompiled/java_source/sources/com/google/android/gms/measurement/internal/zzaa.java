package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzaa {
    String zza;
    int zzb;
    Boolean zzc;
    Boolean zzd;
    Long zze;
    Long zzf;

    zzaa(String str, int i11) {
        this.zza = str;
        this.zzb = i11;
    }

    static Boolean zza(double d11, com.google.android.gms.internal.measurement.zzfo.zzd zzdVar) {
        try {
            return zza(new BigDecimal(d11), zzdVar, Math.ulp(d11));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean zza(long j11, com.google.android.gms.internal.measurement.zzfo.zzd zzdVar) {
        try {
            return zza(new BigDecimal(j11), zzdVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    static Boolean zza(Boolean bool, boolean z10) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z10);
    }

    static Boolean zza(String str, com.google.android.gms.internal.measurement.zzfo.zzd zzdVar) {
        if (!zzoo.zzb(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzdVar, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static Boolean zza(String str, com.google.android.gms.internal.measurement.zzfo.zzf.zzb zzbVar, boolean z10, String str2, List<String> list, String str3, zzgo zzgoVar) {
        if (str == null) {
            return null;
        }
        if (zzbVar == com.google.android.gms.internal.measurement.zzfo.zzf.zzb.IN_LIST) {
            if (list == null || list.isEmpty()) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z10 && zzbVar != com.google.android.gms.internal.measurement.zzfo.zzf.zzb.REGEXP) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (zzw.zza[zzbVar.ordinal()]) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z10 ? 0 : 66).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    if (zzgoVar != null) {
                        zzgoVar.zzu().zza("Invalid regular expression in REGEXP audience filter. expression", str3);
                    }
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                if (list == null) {
                    return null;
                }
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    static Boolean zza(String str, com.google.android.gms.internal.measurement.zzfo.zzf zzfVar, zzgo zzgoVar) {
        List<String> list;
        Preconditions.checkNotNull(zzfVar);
        if (str == null || !zzfVar.zzj() || zzfVar.zzb() == com.google.android.gms.internal.measurement.zzfo.zzf.zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        com.google.android.gms.internal.measurement.zzfo.zzf.zzb zzbVarZzb = zzfVar.zzb();
        com.google.android.gms.internal.measurement.zzfo.zzf.zzb zzbVar = com.google.android.gms.internal.measurement.zzfo.zzf.zzb.IN_LIST;
        if (zzbVarZzb == zzbVar) {
            if (zzfVar.zza() == 0) {
                return null;
            }
        } else if (!zzfVar.zzi()) {
            return null;
        }
        com.google.android.gms.internal.measurement.zzfo.zzf.zzb zzbVarZzb2 = zzfVar.zzb();
        boolean zZzg = zzfVar.zzg();
        String strZze = (zZzg || zzbVarZzb2 == com.google.android.gms.internal.measurement.zzfo.zzf.zzb.REGEXP || zzbVarZzb2 == zzbVar) ? zzfVar.zze() : zzfVar.zze().toUpperCase(Locale.ENGLISH);
        if (zzfVar.zza() == 0) {
            list = null;
        } else {
            List<String> listZzf = zzfVar.zzf();
            if (!zZzg) {
                ArrayList arrayList = new ArrayList(listZzf.size());
                Iterator<String> it = listZzf.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().toUpperCase(Locale.ENGLISH));
                }
                listZzf = Collections.unmodifiableList(arrayList);
            }
            list = listZzf;
        }
        return zza(str, zzbVarZzb2, zZzg, strZze, list, zzbVarZzb2 == com.google.android.gms.internal.measurement.zzfo.zzf.zzb.REGEXP ? strZze : null, zzgoVar);
    }

    private static Boolean zza(BigDecimal bigDecimal, com.google.android.gms.internal.measurement.zzfo.zzd zzdVar, double d11) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzdVar);
        if (zzdVar.zzh() && zzdVar.zza() != com.google.android.gms.internal.measurement.zzfo.zzd.zzb.UNKNOWN_COMPARISON_TYPE) {
            com.google.android.gms.internal.measurement.zzfo.zzd.zzb zzbVarZza = zzdVar.zza();
            com.google.android.gms.internal.measurement.zzfo.zzd.zzb zzbVar = com.google.android.gms.internal.measurement.zzfo.zzd.zzb.BETWEEN;
            if (zzbVarZza == zzbVar) {
                if (!zzdVar.zzl() || !zzdVar.zzk()) {
                    return null;
                }
            } else if (!zzdVar.zzi()) {
                return null;
            }
            com.google.android.gms.internal.measurement.zzfo.zzd.zzb zzbVarZza2 = zzdVar.zza();
            if (zzdVar.zza() == zzbVar) {
                if (zzoo.zzb(zzdVar.zzf()) && zzoo.zzb(zzdVar.zze())) {
                    try {
                        BigDecimal bigDecimal5 = new BigDecimal(zzdVar.zzf());
                        bigDecimal4 = new BigDecimal(zzdVar.zze());
                        bigDecimal3 = bigDecimal5;
                        bigDecimal2 = null;
                    } catch (NumberFormatException unused) {
                    }
                }
                return null;
            }
            if (!zzoo.zzb(zzdVar.zzd())) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(zzdVar.zzd());
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException unused2) {
            }
            if (zzbVarZza2 == zzbVar) {
                if (bigDecimal3 == null) {
                    return null;
                }
            } else if (bigDecimal2 != null) {
            }
            int i11 = zzw.zzb[zzbVarZza2.ordinal()];
            boolean z10 = false;
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 4 || bigDecimal3 == null) {
                            return null;
                        }
                        if (bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0) {
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    }
                    if (bigDecimal2 != null) {
                        if (d11 == 0.0d) {
                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                        }
                        if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d11).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d11).multiply(new BigDecimal(2)))) < 0) {
                            z10 = true;
                        }
                        return Boolean.valueOf(z10);
                    }
                } else if (bigDecimal2 != null) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                }
            } else if (bigDecimal2 != null) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
            }
        }
        return null;
    }

    abstract int zza();

    abstract boolean zzb();

    abstract boolean zzc();
}
