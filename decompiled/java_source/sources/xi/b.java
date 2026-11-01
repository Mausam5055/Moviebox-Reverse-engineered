package xi;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.transsion.ad.web.cct.CCTWebviewActivity;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements a {
    @Override // xi.a
    public void a(Activity activity, Uri uri) {
        Intent intent = new Intent(activity, (Class<?>) CCTWebviewActivity.class);
        intent.putExtra("extra.url", String.valueOf(uri));
        if (activity != null) {
            activity.startActivity(intent);
        }
    }
}
