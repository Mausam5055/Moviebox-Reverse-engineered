package cu;

import android.content.Context;
import android.content.Intent;
import com.transsion.push.api.IPushProvider;
import com.transsion.subroom.deeplink.DeepLinkHandler;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a implements IPushProvider {
    @Override // com.transsion.push.api.IPushProvider
    public Intent a(Context context) {
        Intrinsics.h(context, "context");
        return new Intent(context, (Class<?>) DeepLinkHandler.class);
    }
}
