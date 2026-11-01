package androidx.core.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.ContentInfo;
import com.cloud.tmc.integration.event.EventConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final class ContentInfoCompat {
    public static final int FLAG_CONVERT_TO_PLAIN_TEXT = 1;
    public static final int SOURCE_APP = 0;
    public static final int SOURCE_AUTOFILL = 4;
    public static final int SOURCE_CLIPBOARD = 1;
    public static final int SOURCE_DRAG_AND_DROP = 3;
    public static final int SOURCE_INPUT_METHOD = 2;
    public static final int SOURCE_PROCESS_TEXT = 5;
    private final f mCompat;

    public static final class Builder {
        private final c mBuilderCompat;

        public Builder(ClipData clipData, int i11) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.mBuilderCompat = new b(clipData, i11);
            } else {
                this.mBuilderCompat = new d(clipData, i11);
            }
        }

        public Builder(ContentInfoCompat contentInfoCompat) {
            if (Build.VERSION.SDK_INT >= 31) {
                this.mBuilderCompat = new b(contentInfoCompat);
            } else {
                this.mBuilderCompat = new d(contentInfoCompat);
            }
        }

        public ContentInfoCompat build() {
            return this.mBuilderCompat.build();
        }

        public Builder setClip(ClipData clipData) {
            this.mBuilderCompat.c(clipData);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mBuilderCompat.setExtras(bundle);
            return this;
        }

        public Builder setFlags(int i11) {
            this.mBuilderCompat.d(i11);
            return this;
        }

        public Builder setLinkUri(Uri uri) {
            this.mBuilderCompat.b(uri);
            return this;
        }

        public Builder setSource(int i11) {
            this.mBuilderCompat.a(i11);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    private static final class a {
        public static Pair a(ContentInfo contentInfo, final Predicate predicate) {
            ClipData clip = contentInfo.getClip();
            if (clip.getItemCount() == 1) {
                boolean zTest = predicate.test(clip.getItemAt(0));
                ContentInfo contentInfo2 = zTest ? contentInfo : null;
                if (zTest) {
                    contentInfo = null;
                }
                return Pair.create(contentInfo2, contentInfo);
            }
            Objects.requireNonNull(predicate);
            Pair<ClipData, ClipData> pairPartition = ContentInfoCompat.partition(clip, new androidx.core.util.j() { // from class: androidx.core.view.b
                @Override // androidx.core.util.j
                public final boolean a(Object obj) {
                    return predicate.test((ClipData.Item) obj);
                }
            });
            if (pairPartition.first == null) {
                return Pair.create(null, contentInfo);
            }
            return pairPartition.second == null ? Pair.create(contentInfo, null) : Pair.create(new ContentInfo.Builder(contentInfo).setClip((ClipData) pairPartition.first).build(), new ContentInfo.Builder(contentInfo).setClip((ClipData) pairPartition.second).build());
        }
    }

    private static final class b implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentInfo.Builder f8277a;

        b(ClipData clipData, int i11) {
            this.f8277a = i.a(clipData, i11);
        }

        b(ContentInfoCompat contentInfoCompat) {
            k.a();
            this.f8277a = j.a(contentInfoCompat.toContentInfo());
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void a(int i11) {
            this.f8277a.setSource(i11);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void b(Uri uri) {
            this.f8277a.setLinkUri(uri);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new e(this.f8277a.build()));
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void c(ClipData clipData) {
            this.f8277a.setClip(clipData);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void d(int i11) {
            this.f8277a.setFlags(i11);
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setExtras(Bundle bundle) {
            this.f8277a.setExtras(bundle);
        }
    }

    private interface c {
        void a(int i11);

        void b(Uri uri);

        ContentInfoCompat build();

        void c(ClipData clipData);

        void d(int i11);

        void setExtras(Bundle bundle);
    }

    private static final class d implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ClipData f8278a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f8279b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f8280c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Uri f8281d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Bundle f8282e;

        d(ClipData clipData, int i11) {
            this.f8278a = clipData;
            this.f8279b = i11;
        }

        d(ContentInfoCompat contentInfoCompat) {
            this.f8278a = contentInfoCompat.getClip();
            this.f8279b = contentInfoCompat.getSource();
            this.f8280c = contentInfoCompat.getFlags();
            this.f8281d = contentInfoCompat.getLinkUri();
            this.f8282e = contentInfoCompat.getExtras();
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void a(int i11) {
            this.f8279b = i11;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void b(Uri uri) {
            this.f8281d = uri;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public ContentInfoCompat build() {
            return new ContentInfoCompat(new g(this));
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void c(ClipData clipData) {
            this.f8278a = clipData;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void d(int i11) {
            this.f8280c = i11;
        }

        @Override // androidx.core.view.ContentInfoCompat.c
        public void setExtras(Bundle bundle) {
            this.f8282e = bundle;
        }
    }

    private static final class e implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ContentInfo f8283a;

        e(ContentInfo contentInfo) {
            this.f8283a = androidx.core.view.a.a(androidx.core.util.i.g(contentInfo));
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public int a() {
            return this.f8283a.getSource();
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public Uri b() {
            return this.f8283a.getLinkUri();
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public ContentInfo c() {
            return this.f8283a;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public ClipData d() {
            return this.f8283a.getClip();
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public Bundle getExtras() {
            return this.f8283a.getExtras();
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public int getFlags() {
            return this.f8283a.getFlags();
        }

        public String toString() {
            return "ContentInfoCompat{" + this.f8283a + "}";
        }
    }

    private interface f {
        int a();

        Uri b();

        ContentInfo c();

        ClipData d();

        Bundle getExtras();

        int getFlags();
    }

    private static final class g implements f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ClipData f8284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f8285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f8286c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Uri f8287d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Bundle f8288e;

        g(d dVar) {
            this.f8284a = (ClipData) androidx.core.util.i.g(dVar.f8278a);
            this.f8285b = androidx.core.util.i.c(dVar.f8279b, 0, 5, EventConstants.KEY_SOURCE);
            this.f8286c = androidx.core.util.i.f(dVar.f8280c, 1);
            this.f8287d = dVar.f8281d;
            this.f8288e = dVar.f8282e;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public int a() {
            return this.f8285b;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public Uri b() {
            return this.f8287d;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public ContentInfo c() {
            return null;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public ClipData d() {
            return this.f8284a;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public Bundle getExtras() {
            return this.f8288e;
        }

        @Override // androidx.core.view.ContentInfoCompat.f
        public int getFlags() {
            return this.f8286c;
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ContentInfoCompat{clip=");
            sb2.append(this.f8284a.getDescription());
            sb2.append(", source=");
            sb2.append(ContentInfoCompat.sourceToString(this.f8285b));
            sb2.append(", flags=");
            sb2.append(ContentInfoCompat.flagsToString(this.f8286c));
            if (this.f8287d == null) {
                str = "";
            } else {
                str = ", hasLinkUri(" + this.f8287d.toString().length() + ")";
            }
            sb2.append(str);
            sb2.append(this.f8288e != null ? ", hasExtras" : "");
            sb2.append("}");
            return sb2.toString();
        }
    }

    ContentInfoCompat(f fVar) {
        this.mCompat = fVar;
    }

    static ClipData buildClipData(ClipDescription clipDescription, List<ClipData.Item> list) {
        ClipData clipData = new ClipData(new ClipDescription(clipDescription), list.get(0));
        for (int i11 = 1; i11 < list.size(); i11++) {
            clipData.addItem(list.get(i11));
        }
        return clipData;
    }

    static String flagsToString(int i11) {
        return (i11 & 1) != 0 ? "FLAG_CONVERT_TO_PLAIN_TEXT" : String.valueOf(i11);
    }

    static Pair<ClipData, ClipData> partition(ClipData clipData, androidx.core.util.j jVar) {
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (int i11 = 0; i11 < clipData.getItemCount(); i11++) {
            ClipData.Item itemAt = clipData.getItemAt(i11);
            if (jVar.a(itemAt)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(itemAt);
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(itemAt);
            }
        }
        if (arrayList == null) {
            return Pair.create(null, clipData);
        }
        return arrayList2 == null ? Pair.create(clipData, null) : Pair.create(buildClipData(clipData.getDescription(), arrayList), buildClipData(clipData.getDescription(), arrayList2));
    }

    public static Pair<ContentInfo, ContentInfo> partition(ContentInfo contentInfo, Predicate<ClipData.Item> predicate) {
        return a.a(contentInfo, predicate);
    }

    static String sourceToString(int i11) {
        if (i11 == 0) {
            return "SOURCE_APP";
        }
        if (i11 == 1) {
            return "SOURCE_CLIPBOARD";
        }
        if (i11 == 2) {
            return "SOURCE_INPUT_METHOD";
        }
        if (i11 == 3) {
            return "SOURCE_DRAG_AND_DROP";
        }
        if (i11 != 4) {
            return i11 != 5 ? String.valueOf(i11) : "SOURCE_PROCESS_TEXT";
        }
        return "SOURCE_AUTOFILL";
    }

    public static ContentInfoCompat toContentInfoCompat(ContentInfo contentInfo) {
        return new ContentInfoCompat(new e(contentInfo));
    }

    public ClipData getClip() {
        return this.mCompat.d();
    }

    public Bundle getExtras() {
        return this.mCompat.getExtras();
    }

    public int getFlags() {
        return this.mCompat.getFlags();
    }

    public Uri getLinkUri() {
        return this.mCompat.b();
    }

    public int getSource() {
        return this.mCompat.a();
    }

    public Pair<ContentInfoCompat, ContentInfoCompat> partition(androidx.core.util.j jVar) {
        ClipData clipDataD = this.mCompat.d();
        if (clipDataD.getItemCount() == 1) {
            boolean zA = jVar.a(clipDataD.getItemAt(0));
            return Pair.create(zA ? this : null, zA ? null : this);
        }
        Pair<ClipData, ClipData> pairPartition = partition(clipDataD, jVar);
        if (pairPartition.first == null) {
            return Pair.create(null, this);
        }
        return pairPartition.second == null ? Pair.create(this, null) : Pair.create(new Builder(this).setClip((ClipData) pairPartition.first).build(), new Builder(this).setClip((ClipData) pairPartition.second).build());
    }

    public ContentInfo toContentInfo() {
        ContentInfo contentInfoC = this.mCompat.c();
        Objects.requireNonNull(contentInfoC);
        return androidx.core.view.a.a(contentInfoC);
    }

    public String toString() {
        return this.mCompat.toString();
    }
}
