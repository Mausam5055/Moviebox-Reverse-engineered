package androidx.media3.datasource.cronet;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetProvider;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CronetUtil {

    private static class CronetProviderComparator implements Comparator<CronetProvider> {
        private static final String GOOGLE_PLAY_SERVICES_PROVIDER_NAME = "Google-Play-Services-Cronet-Provider";
        private final boolean preferGooglePlayServices;

        public CronetProviderComparator(boolean z10) {
            this.preferGooglePlayServices = z10;
        }

        private static int compareVersionStrings(@Nullable String str, @Nullable String str2) {
            if (str != null && str2 != null) {
                String[] strArrO1 = a1.o1(str, "\\.");
                String[] strArrO2 = a1.o1(str2, "\\.");
                int iMin = Math.min(strArrO1.length, strArrO2.length);
                for (int i11 = 0; i11 < iMin; i11++) {
                    if (!strArrO1[i11].equals(strArrO2[i11])) {
                        try {
                            return Integer.parseInt(strArrO1[i11]) - Integer.parseInt(strArrO2[i11]);
                        } catch (NumberFormatException unused) {
                            return 0;
                        }
                    }
                }
            }
            return 0;
        }

        private int getPriority(CronetProvider cronetProvider) {
            String name = cronetProvider.getName();
            if (CronetProvider.PROVIDER_NAME_APP_PACKAGED.equals(name)) {
                return 1;
            }
            if ("Google-Play-Services-Cronet-Provider".equals(name)) {
                return this.preferGooglePlayServices ? 0 : 2;
            }
            return 3;
        }

        @Override // java.util.Comparator
        public int compare(CronetProvider cronetProvider, CronetProvider cronetProvider2) {
            int priority = getPriority(cronetProvider) - getPriority(cronetProvider2);
            return priority != 0 ? priority : -compareVersionStrings(cronetProvider.getVersion(), cronetProvider2.getVersion());
        }
    }

    public static CronetEngine a(Context context) {
        return b(context, null, false);
    }

    public static CronetEngine b(Context context, String str, boolean z10) {
        ArrayList arrayList = new ArrayList(CronetProvider.getAllProviders(context));
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!((CronetProvider) arrayList.get(size)).isEnabled() || CronetProvider.PROVIDER_NAME_FALLBACK.equals(((CronetProvider) arrayList.get(size)).getName())) {
                arrayList.remove(size);
            }
        }
        Collections.sort(arrayList, new CronetProviderComparator(z10));
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            String name = ((CronetProvider) arrayList.get(i11)).getName();
            try {
                CronetEngine.Builder builderCreateBuilder = ((CronetProvider) arrayList.get(i11)).createBuilder();
                if (str != null) {
                    builderCreateBuilder.setUserAgent(str);
                }
                CronetEngine cronetEngineBuild = builderCreateBuilder.build();
                u.b("CronetUtil", "CronetEngine built using " + name);
                return cronetEngineBuild;
            } catch (SecurityException unused) {
                u.h("CronetUtil", "Failed to build CronetEngine. Please check that the process has android.permission.ACCESS_NETWORK_STATE.");
            } catch (UnsatisfiedLinkError unused2) {
                u.h("CronetUtil", "Failed to link Cronet binaries. Please check that native Cronet binaries arebundled into your app.");
            }
        }
        u.h("CronetUtil", "CronetEngine could not be built.");
        return null;
    }
}
