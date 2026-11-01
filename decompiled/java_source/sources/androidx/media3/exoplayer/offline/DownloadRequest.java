package androidx.media3.exoplayer.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.a1;
import androidx.media3.common.y;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new a();

    @Nullable
    public final ByteRange byteRange;

    @Nullable
    public final String customCacheKey;
    public final byte[] data;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public final String f12343id;

    @Nullable
    public final byte[] keySetId;

    @Nullable
    public final String mimeType;
    public final List<StreamKey> streamKeys;
    public final Uri uri;

    public static final class ByteRange implements Parcelable {
        public static final Parcelable.Creator<ByteRange> CREATOR = new a();
        public final long length;
        public final long offset;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ByteRange createFromParcel(Parcel parcel) {
                return new ByteRange(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public ByteRange[] newArray(int i11) {
                return new ByteRange[i11];
            }
        }

        ByteRange(long j11, long j12) {
            androidx.media3.common.util.a.a(j11 >= 0);
            androidx.media3.common.util.a.a(j12 >= 0 || j12 == -1);
            this.offset = j11;
            this.length = j12;
        }

        ByteRange(Parcel parcel) {
            this(parcel.readLong(), parcel.readLong());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof ByteRange)) {
                return false;
            }
            ByteRange byteRange = (ByteRange) obj;
            return this.offset == byteRange.offset && this.length == byteRange.length;
        }

        public int hashCode() {
            return (((int) this.offset) * 961) + ((int) this.length);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeLong(this.offset);
            parcel.writeLong(this.length);
        }
    }

    public static class UnsupportedRequestException extends IOException {
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public DownloadRequest[] newArray(int i11) {
            return new DownloadRequest[i11];
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f12344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Uri f12345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f12346c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List f12347d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte[] f12348e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f12349f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte[] f12350g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private ByteRange f12351h = null;

        public b(String str, Uri uri) {
            this.f12344a = str;
            this.f12345b = uri;
        }

        public DownloadRequest a() {
            String str = this.f12344a;
            Uri uri = this.f12345b;
            String str2 = this.f12346c;
            List listOf = this.f12347d;
            if (listOf == null) {
                listOf = ImmutableList.of();
            }
            return new DownloadRequest(str, uri, str2, listOf, this.f12348e, this.f12349f, this.f12350g, this.f12351h, null);
        }

        public b b(String str) {
            this.f12349f = str;
            return this;
        }

        public b c(byte[] bArr) {
            this.f12350g = bArr;
            return this;
        }

        public b d(byte[] bArr) {
            this.f12348e = bArr;
            return this;
        }

        public b e(String str) {
            this.f12346c = y.u(str);
            return this;
        }

        public b f(List list) {
            this.f12347d = list;
            return this;
        }
    }

    DownloadRequest(Parcel parcel) {
        this.f12343id = (String) a1.i(parcel.readString());
        this.uri = Uri.parse((String) a1.i(parcel.readString()));
        this.mimeType = parcel.readString();
        int i11 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = parcel.createByteArray();
        this.customCacheKey = parcel.readString();
        this.data = (byte[]) a1.i(parcel.createByteArray());
        this.byteRange = (ByteRange) parcel.readParcelable(ByteRange.class.getClassLoader());
    }

    private DownloadRequest(String str, Uri uri, @Nullable String str2, List<StreamKey> list, @Nullable byte[] bArr, @Nullable String str3, @Nullable byte[] bArr2, @Nullable ByteRange byteRange) {
        int iA0 = a1.A0(uri, str2);
        if (iA0 == 0 || iA0 == 2 || iA0 == 1) {
            androidx.media3.common.util.a.b(str3 == null, "customCacheKey must be null for type: " + iA0);
            this.byteRange = null;
        } else {
            this.byteRange = byteRange;
        }
        this.f12343id = str;
        this.uri = uri;
        this.mimeType = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.customCacheKey = str3;
        this.data = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : a1.f10355f;
    }

    /* synthetic */ DownloadRequest(String str, Uri uri, String str2, List list, byte[] bArr, String str3, byte[] bArr2, ByteRange byteRange, a aVar) {
        this(str, uri, str2, list, bArr, str3, bArr2, byteRange);
    }

    public DownloadRequest copyWithId(String str) {
        return new DownloadRequest(str, this.uri, this.mimeType, this.streamKeys, this.keySetId, this.customCacheKey, this.data, this.byteRange);
    }

    public DownloadRequest copyWithKeySetId(@Nullable byte[] bArr) {
        return new DownloadRequest(this.f12343id, this.uri, this.mimeType, this.streamKeys, bArr, this.customCacheKey, this.data, this.byteRange);
    }

    public DownloadRequest copyWithMergedRequest(DownloadRequest downloadRequest) {
        List listEmptyList;
        androidx.media3.common.util.a.a(this.f12343id.equals(downloadRequest.f12343id));
        if (this.streamKeys.isEmpty() || downloadRequest.streamKeys.isEmpty()) {
            listEmptyList = Collections.emptyList();
        } else {
            listEmptyList = new ArrayList(this.streamKeys);
            for (int i11 = 0; i11 < downloadRequest.streamKeys.size(); i11++) {
                StreamKey streamKey = downloadRequest.streamKeys.get(i11);
                if (!listEmptyList.contains(streamKey)) {
                    listEmptyList.add(streamKey);
                }
            }
        }
        return new DownloadRequest(this.f12343id, downloadRequest.uri, downloadRequest.mimeType, listEmptyList, downloadRequest.keySetId, downloadRequest.customCacheKey, downloadRequest.data, downloadRequest.byteRange);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        return this.f12343id.equals(downloadRequest.f12343id) && this.uri.equals(downloadRequest.uri) && Objects.equals(this.mimeType, downloadRequest.mimeType) && this.streamKeys.equals(downloadRequest.streamKeys) && Arrays.equals(this.keySetId, downloadRequest.keySetId) && Objects.equals(this.customCacheKey, downloadRequest.customCacheKey) && Arrays.equals(this.data, downloadRequest.data) && Objects.equals(this.byteRange, downloadRequest.byteRange);
    }

    public int hashCode() {
        int iHashCode = ((this.f12343id.hashCode() * 961) + this.uri.hashCode()) * 31;
        String str = this.mimeType;
        int iHashCode2 = (((((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.streamKeys.hashCode()) * 31) + Arrays.hashCode(this.keySetId)) * 31;
        String str2 = this.customCacheKey;
        int iHashCode3 = (((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.data)) * 31;
        ByteRange byteRange = this.byteRange;
        return iHashCode3 + (byteRange != null ? byteRange.hashCode() : 0);
    }

    public androidx.media3.common.t toMediaItem() {
        return new androidx.media3.common.t.c().d(this.f12343id).i(this.uri).b(this.customCacheKey).e(this.mimeType).f(this.streamKeys).a();
    }

    public String toString() {
        return this.mimeType + ":" + this.f12343id;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.f12343id);
        parcel.writeString(this.uri.toString());
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.streamKeys.size());
        for (int i12 = 0; i12 < this.streamKeys.size(); i12++) {
            parcel.writeParcelable(this.streamKeys.get(i12), 0);
        }
        parcel.writeByteArray(this.keySetId);
        parcel.writeString(this.customCacheKey);
        parcel.writeByteArray(this.data);
        parcel.writeParcelable(this.byteRange, 0);
    }
}
