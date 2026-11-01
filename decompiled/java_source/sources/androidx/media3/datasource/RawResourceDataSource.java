package androidx.media3.datasource;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;
import w1.h;

/* JADX INFO: loaded from: classes2.dex */
public final class RawResourceDataSource extends w1.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f10703e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private h f10704f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AssetFileDescriptor f10705g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private InputStream f10706h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f10707i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f10708j;

    public static class RawResourceDataSourceException extends DataSourceException {
        @Deprecated
        public RawResourceDataSourceException(String str) {
            super(str, null, 2000);
        }

        public RawResourceDataSourceException(@Nullable String str, @Nullable Throwable th2, int i11) {
            super(str, th2, i11);
        }

        @Deprecated
        public RawResourceDataSourceException(Throwable th2) {
            super(th2, 2000);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f10703e = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i11) {
        return Uri.parse("rawresource:///" + i11);
    }

    private static AssetFileDescriptor h(Context context, h hVar) throws RawResourceDataSourceException {
        Resources resourcesForApplication;
        int identifier;
        Uri uriNormalizeScheme = hVar.f77511a.normalizeScheme();
        if (TextUtils.equals(com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME, uriNormalizeScheme.getScheme())) {
            resourcesForApplication = context.getResources();
            List<String> pathSegments = uriNormalizeScheme.getPathSegments();
            if (pathSegments.size() != 1) {
                throw new RawResourceDataSourceException("rawresource:// URI must have exactly one path element, found " + pathSegments.size());
            }
            identifier = i(pathSegments.get(0));
        } else {
            if (!TextUtils.equals("android.resource", uriNormalizeScheme.getScheme())) {
                throw new RawResourceDataSourceException("Unsupported URI scheme (" + uriNormalizeScheme.getScheme() + "). Only android.resource is supported.", null, 1004);
            }
            String strSubstring = (String) androidx.media3.common.util.a.e(uriNormalizeScheme.getPath());
            if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            String packageName = TextUtils.isEmpty(uriNormalizeScheme.getHost()) ? context.getPackageName() : uriNormalizeScheme.getHost();
            if (packageName.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                } catch (PackageManager.NameNotFoundException e11) {
                    throw new RawResourceDataSourceException("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e11, 2005);
                }
            }
            if (strSubstring.matches("\\d+")) {
                identifier = i(strSubstring);
            } else {
                identifier = resourcesForApplication.getIdentifier(packageName + ":" + strSubstring, "raw", null);
                if (identifier == 0) {
                    throw new RawResourceDataSourceException("Resource not found.", null, 2005);
                }
            }
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = resourcesForApplication.openRawResourceFd(identifier);
            if (assetFileDescriptorOpenRawResourceFd != null) {
                return assetFileDescriptorOpenRawResourceFd;
            }
            throw new RawResourceDataSourceException("Resource is compressed: " + uriNormalizeScheme, null, 2000);
        } catch (Resources.NotFoundException e12) {
            throw new RawResourceDataSourceException(null, e12, 2005);
        }
    }

    private static int i(String str) throws RawResourceDataSourceException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
        }
    }

    @Override // androidx.media3.datasource.a
    public long a(h hVar) throws RawResourceDataSourceException {
        this.f10704f = hVar;
        f(hVar);
        AssetFileDescriptor assetFileDescriptorH = h(this.f10703e, hVar);
        this.f10705g = assetFileDescriptorH;
        long length = assetFileDescriptorH.getLength();
        FileInputStream fileInputStream = new FileInputStream(this.f10705g.getFileDescriptor());
        this.f10706h = fileInputStream;
        if (length != -1) {
            try {
                if (hVar.f77517g > length) {
                    throw new RawResourceDataSourceException(null, null, 2008);
                }
            } catch (RawResourceDataSourceException e11) {
                throw e11;
            } catch (IOException e12) {
                throw new RawResourceDataSourceException(null, e12, 2000);
            }
        }
        long startOffset = this.f10705g.getStartOffset();
        long jSkip = fileInputStream.skip(hVar.f77517g + startOffset) - startOffset;
        if (jSkip != hVar.f77517g) {
            throw new RawResourceDataSourceException(null, null, 2008);
        }
        if (length == -1) {
            FileChannel channel = fileInputStream.getChannel();
            if (channel.size() == 0) {
                this.f10707i = -1L;
            } else {
                long size = channel.size() - channel.position();
                this.f10707i = size;
                if (size < 0) {
                    throw new RawResourceDataSourceException(null, null, 2008);
                }
            }
        } else {
            long j11 = length - jSkip;
            this.f10707i = j11;
            if (j11 < 0) {
                throw new DataSourceException(2008);
            }
        }
        long jMin = hVar.f77518h;
        if (jMin != -1) {
            long j12 = this.f10707i;
            if (j12 != -1) {
                jMin = Math.min(j12, jMin);
            }
            this.f10707i = jMin;
        }
        this.f10708j = true;
        g(hVar);
        long j13 = hVar.f77518h;
        return j13 != -1 ? j13 : this.f10707i;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override // androidx.media3.datasource.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        this.f10704f = null;
        try {
            InputStream inputStream = this.f10706h;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f10706h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f10705g;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f10705g = null;
                    if (this.f10708j) {
                        this.f10708j = false;
                        e();
                    }
                } catch (IOException e11) {
                    throw new RawResourceDataSourceException(null, e11, 2000);
                }
            } catch (Throwable th2) {
                this.f10705g = null;
                if (this.f10708j) {
                    this.f10708j = false;
                    e();
                }
                throw th2;
            }
        } catch (IOException e12) {
            throw new RawResourceDataSourceException(null, e12, 2000);
        }
    }

    @Override // androidx.media3.datasource.a
    public Uri getUri() {
        h hVar = this.f10704f;
        if (hVar != null) {
            return hVar.f77511a;
        }
        return null;
    }

    @Override // androidx.media3.common.j
    public int read(byte[] bArr, int i11, int i12) throws RawResourceDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f10707i;
        if (j11 == 0) {
            return -1;
        }
        if (j11 != -1) {
            try {
                i12 = (int) Math.min(j11, i12);
            } catch (IOException e11) {
                throw new RawResourceDataSourceException(null, e11, 2000);
            }
        }
        int i13 = ((InputStream) a1.i(this.f10706h)).read(bArr, i11, i12);
        if (i13 == -1) {
            if (this.f10707i == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j12 = this.f10707i;
        if (j12 != -1) {
            this.f10707i = j12 - ((long) i13);
        }
        d(i13);
        return i13;
    }
}
