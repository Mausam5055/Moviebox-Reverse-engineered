package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.z;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final z f8184a = new z(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Comparator f8185b = new Comparator() { // from class: androidx.core.provider.b
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return d.g((byte[]) obj, (byte[]) obj2);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    interface a {
        Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);

        void close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentProviderClient f8186a;

        b(Context context, Uri uri) {
            this.f8186a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.d.a
        public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.f8186a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e11) {
                Log.w("FontsProvider", "Unable to query the content provider", e11);
                return null;
            }
        }

        @Override // androidx.core.provider.d.a
        public void close() {
            ContentProviderClient contentProviderClient = this.f8186a;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentProviderClient f8187a;

        c(Context context, Uri uri) {
            this.f8187a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.d.a
        public Cursor a(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.f8187a;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e11) {
                Log.w("FontsProvider", "Unable to query the content provider", e11);
                return null;
            }
        }

        @Override // androidx.core.provider.d.a
        public void close() {
            ContentProviderClient contentProviderClient = this.f8187a;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.core.provider.d$d, reason: collision with other inner class name */
    private static class C0068d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f8188a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f8189b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List f8190c;

        C0068d(String str, String str2, List list) {
            this.f8188a = str;
            this.f8189b = str2;
            this.f8190c = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0068d)) {
                return false;
            }
            C0068d c0068d = (C0068d) obj;
            return Objects.equals(this.f8188a, c0068d.f8188a) && Objects.equals(this.f8189b, c0068d.f8189b) && Objects.equals(this.f8190c, c0068d.f8190c);
        }

        public int hashCode() {
            return Objects.hash(this.f8188a, this.f8189b, this.f8190c);
        }
    }

    private static List b(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private static boolean c(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (!Arrays.equals((byte[]) list.get(i11), (byte[]) list2.get(i11))) {
                return false;
            }
        }
        return true;
    }

    private static List d(e eVar, Resources resources) {
        return eVar.b() != null ? eVar.b() : y0.e.c(resources, eVar.c());
    }

    static k.a e(Context context, List list, CancellationSignal cancellationSignal) {
        f4.a.c("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i11 = 0; i11 < list.size(); i11++) {
                e eVar = (e) list.get(i11);
                ProviderInfo providerInfoF = f(context.getPackageManager(), eVar, context.getResources());
                if (providerInfoF == null) {
                    return k.a.b(1, null);
                }
                arrayList.add(h(context, eVar, providerInfoF.authority, cancellationSignal));
            }
            return k.a.a(0, arrayList);
        } finally {
            f4.a.f();
        }
    }

    static ProviderInfo f(PackageManager packageManager, e eVar, Resources resources) {
        f4.a.c("FontProvider.getProvider");
        try {
            List listD = d(eVar, resources);
            C0068d c0068d = new C0068d(eVar.e(), eVar.f(), listD);
            ProviderInfo providerInfo = (ProviderInfo) f8184a.get(c0068d);
            if (providerInfo != null) {
                f4.a.f();
                return providerInfo;
            }
            String strE = eVar.e();
            ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strE, 0);
            if (providerInfoResolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + strE);
            }
            if (!providerInfoResolveContentProvider.packageName.equals(eVar.f())) {
                throw new PackageManager.NameNotFoundException("Found content provider " + strE + ", but package was not " + eVar.f());
            }
            List listB = b(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
            Collections.sort(listB, f8185b);
            for (int i11 = 0; i11 < listD.size(); i11++) {
                ArrayList arrayList = new ArrayList((Collection) listD.get(i11));
                Collections.sort(arrayList, f8185b);
                if (c(listB, arrayList)) {
                    f8184a.put(c0068d, providerInfoResolveContentProvider);
                    f4.a.f();
                    return providerInfoResolveContentProvider;
                }
            }
            f4.a.f();
            return null;
        } catch (Throwable th2) {
            f4.a.f();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i11 = 0; i11 < bArr.length; i11++) {
            byte b11 = bArr[i11];
            byte b12 = bArr2[i11];
            if (b11 != b12) {
                return b11 - b12;
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00de  */
    static k.b[] h(Context context, e eVar, String str, CancellationSignal cancellationSignal) {
        boolean z10;
        f4.a.c("FontProvider.query");
        try {
            ArrayList arrayList = new ArrayList();
            Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
            Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE).build();
            a aVarA = androidx.core.provider.c.a(context, uriBuild);
            Cursor cursorA = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                f4.a.c("ContentQueryWrapper.query");
                try {
                    cursorA = aVarA.a(uriBuild, strArr, "query = ?", new String[]{eVar.g()}, null, cancellationSignal);
                    f4.a.f();
                    if (cursorA != null && cursorA.getCount() > 0) {
                        int columnIndex = cursorA.getColumnIndex("result_code");
                        ArrayList arrayList2 = new ArrayList();
                        int columnIndex2 = cursorA.getColumnIndex("_id");
                        int columnIndex3 = cursorA.getColumnIndex("file_id");
                        int columnIndex4 = cursorA.getColumnIndex("font_ttc_index");
                        int columnIndex5 = cursorA.getColumnIndex("font_weight");
                        int columnIndex6 = cursorA.getColumnIndex("font_italic");
                        while (cursorA.moveToNext()) {
                            int i11 = columnIndex != -1 ? cursorA.getInt(columnIndex) : 0;
                            int i12 = columnIndex4 != -1 ? cursorA.getInt(columnIndex4) : 0;
                            Uri uriWithAppendedId = columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorA.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorA.getLong(columnIndex3));
                            int i13 = columnIndex5 != -1 ? cursorA.getInt(columnIndex5) : 400;
                            if (columnIndex6 != -1) {
                                z10 = true;
                                if (cursorA.getInt(columnIndex6) != 1) {
                                    z10 = false;
                                }
                            } else {
                                z10 = false;
                            }
                            k.b bVarA = k.b.a(uriWithAppendedId, i12, i13, z10, i11);
                            arrayList2 = arrayList2;
                            arrayList2.add(bVarA);
                        }
                        arrayList = arrayList2;
                    }
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    aVarA.close();
                    return (k.b[]) arrayList.toArray(new k.b[0]);
                } finally {
                    f4.a.f();
                }
            } catch (Throwable th2) {
                if (cursorA != null) {
                    cursorA.close();
                }
                aVarA.close();
                throw th2;
            }
        } catch (Throwable th3) {
            f4.a.f();
            throw th3;
        }
    }
}
