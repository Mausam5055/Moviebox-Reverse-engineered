package lu;

import com.transsion.subtitle_download.bean.SubtitleItem;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f69036a = new a();

    private a() {
    }

    private final SubtitleDownloadTable a(SubtitleItem subtitleItem, String str, String str2, String str3, int i11, int i12, int i13, String str4, String str5, String str6) {
        String id2 = subtitleItem.getId();
        String str7 = id2 == null ? "" : id2;
        String lan = subtitleItem.getLan();
        String lanName = subtitleItem.getLanName();
        String name = subtitleItem.getName();
        String url = subtitleItem.getUrl();
        Long size = subtitleItem.getSize();
        Long delay = subtitleItem.getDelay();
        Integer downloads = subtitleItem.getDownloads();
        Integer type = subtitleItem.getType();
        int iIntValue = type != null ? type.intValue() : 1;
        String str8 = str == null ? "" : str;
        Integer episode = subtitleItem.getEpisode();
        int iIntValue2 = episode != null ? episode.intValue() : i12;
        Integer season = subtitleItem.getSeason();
        return new SubtitleDownloadTable(str7, i11, str8, lan, lanName, url, size, delay, downloads, iIntValue, "", name, str2, iIntValue2, season != null ? season.intValue() : i13, 0, str3, 0, null, "", null, null, 0, str4, str5, str6, 7602176, null);
    }

    public final SubtitleDownloadTable b(String str, String str2, String str3, int i11, int i12, int i13, SubtitleItem subtitleItem, String str4, String str5, String str6) {
        Intrinsics.h(subtitleItem, "subtitleItem");
        return a(subtitleItem, str2, str, str3, i11, i12, i13, str4, str5, str6);
    }
}
