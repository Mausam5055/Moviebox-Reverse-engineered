package mp;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f69682a = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(Context context, String str, b callback) {
            Intrinsics.h(context, "context");
            Intrinsics.h(callback, "callback");
            try {
                Bitmap bitmap = (Bitmap) Glide.with(context).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.ALL).submit(Integer.MIN_VALUE, Integer.MIN_VALUE).get();
                File cacheDir = context.getCacheDir();
                lh.a.C0830a c0830a = lh.a.f68842a;
                if (str == null) {
                    str = "";
                }
                File file = new File(cacheDir, "pic" + c0830a.a(str) + ".jpg");
                if (!file.exists()) {
                    mp.a.c(bitmap, file, 100);
                }
                String absolutePath = file.getAbsolutePath();
                Intrinsics.g(absolutePath, "getAbsolutePath(...)");
                callback.a(absolutePath);
            } catch (Exception unused) {
                callback.a("");
            }
        }
    }

    public interface b {
        void a(String str);
    }
}
