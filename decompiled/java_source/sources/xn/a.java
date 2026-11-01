package xn;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public static final Subject a(DownloadBean downloadBean) {
        if (downloadBean == null) {
            return null;
        }
        String subjectId = downloadBean.getSubjectId();
        int subjectType = downloadBean.getSubjectType();
        Long duration = downloadBean.getDuration();
        String string = duration != null ? duration.toString() : null;
        String titleNameAppendResolution = downloadBean.getTitleNameAppendResolution();
        Cover cover = new Cover(null, null, null, downloadBean.getCover(), null, downloadBean.getThumbnail(), null, null, null, 471, null);
        String ops = downloadBean.getOps();
        String genre = downloadBean.getGenre();
        String restrictLevel = downloadBean.getRestrictLevel();
        String releaseDate = downloadBean.getReleaseDate();
        String countryName = downloadBean.getCountryName();
        Integer seNum = downloadBean.getSeNum();
        String subtitles = downloadBean.getSubtitles();
        return new Subject(subjectId, Integer.valueOf(subjectType), titleNameAppendResolution, countryName, cover, releaseDate, null, string, null, genre, null, null, downloadBean.getImdbRate(), null, null, null, null, null, Boolean.TRUE, ops, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, seNum, 0, null, subtitles, null, null, restrictLevel, 0, null, null, null, null, null, null, -791232, 133619711, null);
    }
}
