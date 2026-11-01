package nx;

import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import com.transsion.moviedetail.fragment.ForYouFragment;
import com.transsion.moviedetail.fragment.HotFragment;
import com.transsion.moviedetail.fragment.SubjectEduHeaderFragment;
import com.transsion.moviedetailapi.PostRankType;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.SubjectDetailHeaderFragment;
import com.transsion.videodetail.VideoDetailAudioTrackSelectDialog;
import com.transsion.videodetail.api.IStreamDetailService;
import com.transsion.videodetail.music.ui.SubjectMusicHeaderFragment;
import com.transsion.web.api.WebConstants;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements IStreamDetailService {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f(Function1 function1, DubsInfo it) {
        Intrinsics.h(it, "it");
        function1.invoke(it);
        return Unit.f67061a;
    }

    @Override // com.transsion.videodetail.api.IStreamDetailService
    public Fragment a(String str, String str2, String str3) {
        return HotFragment.INSTANCE.a(str, str2, str3, PostRankType.POST_RANK_TYPE_HOT);
    }

    @Override // com.transsion.videodetail.api.IStreamDetailService
    public Fragment b(Subject subject, String pageName, String str, boolean z10, boolean z11) {
        Fragment subjectMusicHeaderFragment;
        Intrinsics.h(pageName, "pageName");
        Integer subjectType = subject != null ? subject.getSubjectType() : null;
        int value = SubjectType.EDUCATION.getValue();
        if (subjectType != null && subjectType.intValue() == value) {
            subjectMusicHeaderFragment = new SubjectEduHeaderFragment();
        } else {
            subjectMusicHeaderFragment = (subjectType != null && subjectType.intValue() == SubjectType.MUSIC.getValue()) ? new SubjectMusicHeaderFragment() : new SubjectDetailHeaderFragment();
        }
        subjectMusicHeaderFragment.setArguments(d.b(TuplesKt.a("data_key_resource_detectors", subject), TuplesKt.a("ops", subject != null ? subject.getOps() : null), TuplesKt.a("module_name", str), TuplesKt.a("id", subject != null ? subject.getSubjectId() : null), TuplesKt.a("season", Integer.valueOf(subject != null ? subject.getSeason() : 0)), TuplesKt.a(WebConstants.PAGE_FROM, pageName), TuplesKt.a("is_Intercept_detail", Boolean.valueOf(z10)), TuplesKt.a("isOutsideVideo", Boolean.valueOf(z11))));
        return subjectMusicHeaderFragment;
    }

    @Override // com.transsion.videodetail.api.IStreamDetailService
    public void c(Fragment targetFragment, int i11, String subjectId, final Function1 callback) {
        Intrinsics.h(targetFragment, "targetFragment");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(callback, "callback");
        VideoDetailAudioTrackSelectDialog videoDetailAudioTrackSelectDialog = new VideoDetailAudioTrackSelectDialog();
        videoDetailAudioTrackSelectDialog.A0(subjectId);
        videoDetailAudioTrackSelectDialog.n0(targetFragment, i11);
        videoDetailAudioTrackSelectDialog.z0(new Function1() { // from class: nx.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b.f(callback, (DubsInfo) obj);
            }
        });
    }

    @Override // com.transsion.videodetail.api.IStreamDetailService
    public Fragment d(Subject subject, String str, String str2, boolean z10, boolean z11) {
        return ForYouFragment.INSTANCE.a(subject, str, str2, z10, z11);
    }
}
