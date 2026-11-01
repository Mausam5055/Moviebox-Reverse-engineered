package im;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.transsion.lib_web.LoadUrlData;
import gm.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements com.transsion.lib_web.zip.loader.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f65259d = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f65260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LoadUrlData f65261c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(Context context, LoadUrlData loadUrlData) {
        Intrinsics.h(context, "context");
        Intrinsics.h(loadUrlData, "loadUrlData");
        this.f65260b = context;
        this.f65261c = loadUrlData;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    @Override // com.transsion.lib_web.zip.loader.c
    public WebResourceResponse a(WebResourceRequest webResourceRequest) {
        String string;
        if (webResourceRequest != null) {
            try {
                Uri url = webResourceRequest.getUrl();
                if (url != null) {
                    string = url.toString();
                } else {
                    string = null;
                }
                if (string != null && !Intrinsics.c(string, "yy://__QUEUE_MESSAGE__") && Intrinsics.c(string, this.f65261c.getOriginUrl())) {
                    i.f63883a.a("DR_WebviewRenderHomePageFileLoader", "<interceptRequest> url:" + string + " is home page");
                    com.transsion.lib_web.download_render.utils.a aVar = com.transsion.lib_web.download_render.utils.a.f46185a;
                    aVar.n();
                    aVar.a(string, this.f65261c.getSource());
                }
            } catch (Throwable unused) {
            }
        } else {
            string = null;
            if (string != null) {
                i.f63883a.a("DR_WebviewRenderHomePageFileLoader", "<interceptRequest> url:" + string + " is home page");
                com.transsion.lib_web.download_render.utils.a aVar2 = com.transsion.lib_web.download_render.utils.a.f46185a;
                aVar2.n();
                aVar2.a(string, this.f65261c.getSource());
            }
        }
        return null;
    }
}
