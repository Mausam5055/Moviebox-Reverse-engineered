package ir;

import android.app.Application;
import android.text.TextUtils;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import com.cloud.config.utils.CommonUtils;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import com.transsion.share.bean.ShareBean;
import com.transsion.share.bean.ShareType;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import sg.d;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f65610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f65611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f65612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f65613e;

    public static final class a extends sg.a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ ShareType f65615e;

        a(ShareType shareType) {
            this.f65615e = shareType;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            b.this.f65611c.q(null);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(ShareBean shareBean) {
            if (shareBean != null) {
                shareBean.setShareType(this.f65615e);
            }
            b.this.f65611c.q(shareBean);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f65610b = "ActionViewModel";
        this.f65611c = new b0();
        this.f65612d = new b0();
        this.f65613e = LazyKt.b(new Function0() { // from class: ir.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c e() {
        return (c) zg.c.f79414e.a().h(c.class);
    }

    private final c f() {
        return (c) this.f65613e.getValue();
    }

    public final LiveData g() {
        return this.f65611c;
    }

    public final void h(ShareType shareType, String postType, String subjectId, String uid, String scene) {
        Intrinsics.h(shareType, "shareType");
        Intrinsics.h(postType, "postType");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(uid, "uid");
        Intrinsics.h(scene, "scene");
        if (TextUtils.isEmpty(subjectId)) {
            return;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(CommonUtils.PARAM_UID, uid);
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, postType);
        jsonObject.addProperty(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, scene);
        jsonObject.addProperty("id", subjectId);
        RequestBody.Companion companion = RequestBody.INSTANCE;
        String string = jsonObject.toString();
        Intrinsics.g(string, "toString(...)");
        f().a(vg.a.f77324a.a(), companion.create(string, MediaType.INSTANCE.parse("application/json"))).f(d.f75349a.c()).subscribe(new a(shareType));
    }
}
