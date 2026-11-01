package hu;

import android.view.ViewGroup;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.subtitle.helper.f;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface b {
    SimpleSubtitleView a();

    void b(boolean z10);

    void c(String str);

    void d(eu.a aVar, long j11);

    SimpleSubtitleView e();

    void f(boolean z10);

    boolean g();

    ViewGroup getSubtitleViewGroup();

    void h(DubsInfo dubsInfo);

    f i();

    List j();

    void k(eu.a aVar, eu.a aVar2, boolean z10, eu.a aVar3);

    boolean l();
}
