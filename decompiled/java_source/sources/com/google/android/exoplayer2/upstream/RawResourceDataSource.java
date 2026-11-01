package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes3.dex */
public final class RawResourceDataSource extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Resources f27253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f27254f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Uri f27255g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AssetFileDescriptor f27256h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private InputStream f27257i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f27258j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f27259k;

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
        this.f27253e = context.getResources();
        this.f27254f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i11) {
        return Uri.parse("rawresource:///" + i11);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long a(n nVar) throws RawResourceDataSourceException {
        int identifier;
        String str;
        Uri uri = nVar.f27437a;
        this.f27255g = uri;
        if (TextUtils.equals(com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME, uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) com.google.android.exoplayer2.util.a.e(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                identifier = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            String strSubstring = (String) com.google.android.exoplayer2.util.a.e(uri.getPath());
            if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            String host = uri.getHost();
            StringBuilder sb2 = new StringBuilder();
            if (TextUtils.isEmpty(host)) {
                str = "";
            } else {
                str = host + ":";
            }
            sb2.append(str);
            sb2.append(strSubstring);
            identifier = this.f27253e.getIdentifier(sb2.toString(), "raw", this.f27254f);
            if (identifier == 0) {
                throw new RawResourceDataSourceException("Resource not found.", null, 2005);
            }
        }
        j(nVar);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.f27253e.openRawResourceFd(identifier);
            this.f27256h = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new RawResourceDataSourceException("Resource is compressed: " + uri, null, 2000);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.f27257i = fileInputStream;
            if (length != -1) {
                try {
                    if (nVar.f27443g > length) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                } catch (RawResourceDataSourceException e11) {
                    throw e11;
                } catch (IOException e12) {
                    throw new RawResourceDataSourceException(null, e12, 2000);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(nVar.f27443g + startOffset) - startOffset;
            if (jSkip != nVar.f27443g) {
                throw new RawResourceDataSourceException(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.f27258j = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.f27258j = size;
                    if (size < 0) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                }
            } else {
                long j11 = length - jSkip;
                this.f27258j = j11;
                if (j11 < 0) {
                    throw new DataSourceException(2008);
                }
            }
            long jMin = nVar.f27444h;
            if (jMin != -1) {
                long j12 = this.f27258j;
                if (j12 != -1) {
                    jMin = Math.min(j12, jMin);
                }
                this.f27258j = jMin;
            }
            this.f27259k = true;
            k(nVar);
            long j13 = nVar.f27444h;
            return j13 != -1 ? j13 : this.f27258j;
        } catch (Resources.NotFoundException e13) {
            throw new RawResourceDataSourceException(null, e13, 2005);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override // com.google.android.exoplayer2.upstream.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        this.f27255g = null;
        try {
            InputStream inputStream = this.f27257i;
            if (inputStream != null) {
                inputStream.close();
            }
            this.f27257i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.f27256h;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.f27256h = null;
                    if (this.f27259k) {
                        this.f27259k = false;
                        i();
                    }
                } catch (IOException e11) {
                    throw new RawResourceDataSourceException(null, e11, 2000);
                }
            } catch (Throwable th2) {
                this.f27256h = null;
                if (this.f27259k) {
                    this.f27259k = false;
                    i();
                }
                throw th2;
            }
        } catch (IOException e12) {
            throw new RawResourceDataSourceException(null, e12, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Uri getUri() {
        return this.f27255g;
    }

    @Override // com.google.android.exoplayer2.upstream.g
    public int read(byte[] bArr, int i11, int i12) throws RawResourceDataSourceException {
        if (i12 == 0) {
            return 0;
        }
        long j11 = this.f27258j;
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
        int i13 = ((InputStream) p0.j(this.f27257i)).read(bArr, i11, i12);
        if (i13 == -1) {
            if (this.f27258j == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j12 = this.f27258j;
        if (j12 != -1) {
            this.f27258j = j12 - ((long) i13);
        }
        h(i13);
        return i13;
    }
}
