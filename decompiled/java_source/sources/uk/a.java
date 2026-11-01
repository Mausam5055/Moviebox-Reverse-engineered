package uk;

import com.transsion.edcation.bean.CourseBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public static final CourseBean a(Subject subject) {
        Intrinsics.h(subject, "<this>");
        String subjectId = subject.getSubjectId();
        String title = subject.getTitle();
        Cover cover = subject.getCover();
        String imdbRate = subject.getImdbRate();
        String genre = subject.getGenre();
        Integer seenStatus = subject.getSeenStatus();
        return new CourseBean(subjectId, null, seenStatus != null ? seenStatus.intValue() : 0, title, cover, null, imdbRate, genre, subject.getDurationSeconds(), 0L, null, 1570, null);
    }
}
