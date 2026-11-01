package com.amazonaws.services.s3.util;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.StringUtils;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.cloud.tmc.integration.utils.share.config.ShareConstant;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.b;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class Mimetypes {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Log f18975b = LogFactory.b(Mimetypes.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Mimetypes f18976c = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap f18977a;

    Mimetypes() {
        HashMap map = new HashMap();
        this.f18977a = map;
        map.put(RecorderConstants.FORMAT_3GP, MimeTypes.VIDEO_H263);
        map.put("ai", "application/postscript");
        map.put("aif", "audio/x-aiff");
        map.put("aifc", "audio/x-aiff");
        map.put("aiff", "audio/x-aiff");
        map.put("asc", ShareConstant.SHARE_TYPE_TEXT);
        map.put("atom", "application/atom+xml");
        map.put("au", "audio/basic");
        map.put("avi", "video/x-msvideo");
        map.put("bcpio", "application/x-bcpio");
        map.put("bin", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("bmp", "image/bmp");
        map.put("cdf", "application/x-netcdf");
        map.put("cgm", "image/cgm");
        map.put("class", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("cpio", "application/x-cpio");
        map.put("cpt", "application/mac-compactpro");
        map.put("csh", "application/x-csh");
        map.put("css", "text/css");
        map.put(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_CURRENT_RATE, "application/x-director");
        map.put("dif", "video/x-dv");
        map.put(OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR, "application/x-director");
        map.put("djv", "image/vnd.djvu");
        map.put("djvu", "image/vnd.djvu");
        map.put("dll", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("dmg", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("dms", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("doc", "application/msword");
        map.put("dtd", "application/xml-dtd");
        map.put("dv", "video/x-dv");
        map.put("dvi", "application/x-dvi");
        map.put("dxr", "application/x-director");
        map.put("eps", "application/postscript");
        map.put("etx", "text/x-setext");
        map.put("exe", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("ez", "application/andrew-inset");
        map.put("flv", "video/x-flv");
        map.put("gif", "image/gif");
        map.put("gram", "application/srgs");
        map.put("grxml", "application/srgs+xml");
        map.put("gtar", "application/x-gtar");
        map.put("gz", "application/x-gzip");
        map.put("hdf", "application/x-hdf");
        map.put("hqx", "application/mac-binhex40");
        map.put("htm", "text/html");
        map.put("html", "text/html");
        map.put("ice", "x-conference/x-cooltalk");
        map.put("ico", "image/x-icon");
        map.put("ics", "text/calendar");
        map.put("ief", "image/ief");
        map.put("ifb", "text/calendar");
        map.put("iges", "model/iges");
        map.put("igs", "model/iges");
        map.put("jnlp", "application/x-java-jnlp-file");
        map.put("jp2", "image/jp2");
        map.put("jpe", "image/jpeg");
        map.put("jpeg", "image/jpeg");
        map.put("jpg", "image/jpeg");
        map.put("js", "application/x-javascript");
        map.put("kar", "audio/midi");
        map.put("latex", "application/x-latex");
        map.put("lha", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("lzh", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("m3u", "audio/x-mpegurl");
        map.put(RecorderConstants.FORMAT_M4A, MimeTypes.AUDIO_AAC);
        map.put("m4p", MimeTypes.AUDIO_AAC);
        map.put("m4u", "video/vnd.mpegurl");
        map.put("m4v", "video/x-m4v");
        map.put("mac", "image/x-macpaint");
        map.put("man", "application/x-troff-man");
        map.put("mathml", "application/mathml+xml");
        map.put("me", "application/x-troff-me");
        map.put("mesh", "model/mesh");
        map.put("mid", "audio/midi");
        map.put("midi", "audio/midi");
        map.put("mif", "application/vnd.mif");
        map.put("mov", "video/quicktime");
        map.put("movie", "video/x-sgi-movie");
        map.put("mp2", MimeTypes.AUDIO_MPEG);
        map.put("mp3", MimeTypes.AUDIO_MPEG);
        map.put("mp4", MimeTypes.VIDEO_MP4);
        map.put("mpe", MimeTypes.VIDEO_MPEG);
        map.put("mpeg", MimeTypes.VIDEO_MPEG);
        map.put("mpg", MimeTypes.VIDEO_MPEG);
        map.put("mpga", MimeTypes.AUDIO_MPEG);
        map.put("ms", "application/x-troff-ms");
        map.put("msh", "model/mesh");
        map.put("mxu", "video/vnd.mpegurl");
        map.put(ResourceManager.KEY_MD5CHECK, "application/x-netcdf");
        map.put("oda", "application/oda");
        map.put("ogg", "application/ogg");
        map.put("ogv", "video/ogv");
        map.put("pbm", "image/x-portable-bitmap");
        map.put("pct", "image/pict");
        map.put("pdb", "chemical/x-pdb");
        map.put("pdf", ShareConstant.SHARE_TYPE_PDF);
        map.put("pgm", "image/x-portable-graymap");
        map.put("pgn", "application/x-chess-pgn");
        map.put("pic", "image/pict");
        map.put("pict", "image/pict");
        map.put("png", "image/png");
        map.put("pnm", "image/x-portable-anymap");
        map.put("pnt", "image/x-macpaint");
        map.put("pntg", "image/x-macpaint");
        map.put("ppm", "image/x-portable-pixmap");
        map.put("ppt", "application/vnd.ms-powerpoint");
        map.put("ps", "application/postscript");
        map.put(DownloadCommon.DOWNLOAD_REPORT_QUERY_TIMEOUT, "video/quicktime");
        map.put("qti", "image/x-quicktime");
        map.put("qtif", "image/x-quicktime");
        map.put("ra", "audio/x-pn-realaudio");
        map.put("ram", "audio/x-pn-realaudio");
        map.put("ras", "image/x-cmu-raster");
        map.put("rdf", "application/rdf+xml");
        map.put("rgb", "image/x-rgb");
        map.put("rm", "application/vnd.rn-realmedia");
        map.put("roff", "application/x-troff");
        map.put("rtf", "text/rtf");
        map.put("rtx", "text/richtext");
        map.put("sgm", "text/sgml");
        map.put("sgml", "text/sgml");
        map.put(b.JSON_KEY_SH, "application/x-sh");
        map.put("shar", "application/x-shar");
        map.put("silo", "model/mesh");
        map.put("sit", "application/x-stuffit");
        map.put("skd", "application/x-koan");
        map.put("skm", "application/x-koan");
        map.put("skp", "application/x-koan");
        map.put("skt", "application/x-koan");
        map.put("smi", "application/smil");
        map.put("smil", "application/smil");
        map.put("snd", "audio/basic");
        map.put("so", OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        map.put("spl", "application/x-futuresplash");
        map.put("src", "application/x-wais-source");
        map.put("sv4cpio", "application/x-sv4cpio");
        map.put("sv4crc", "application/x-sv4crc");
        map.put("svg", "image/svg+xml");
        map.put("swf", "application/x-shockwave-flash");
        map.put("t", "application/x-troff");
        map.put("tar", "application/x-tar");
        map.put("tcl", "application/x-tcl");
        map.put("tex", "application/x-tex");
        map.put("texi", "application/x-texinfo");
        map.put("texinfo", "application/x-texinfo");
        map.put("tif", "image/tiff");
        map.put("tiff", "image/tiff");
        map.put("tr", "application/x-troff");
        map.put("tsv", "text/tab-separated-values");
        map.put("txt", ShareConstant.SHARE_TYPE_TEXT);
        map.put("ustar", "application/x-ustar");
        map.put("vcd", "application/x-cdlink");
        map.put("vrml", "model/vrml");
        map.put("vxml", "application/voicexml+xml");
        map.put(RecorderConstants.FORMAT_WAV, "audio/x-wav");
        map.put("wbmp", "image/vnd.wap.wbmp");
        map.put("wbxml", "application/vnd.wap.wbxml");
        map.put("webm", MimeTypes.VIDEO_WEBM);
        map.put("wml", "text/vnd.wap.wml");
        map.put("wmlc", "application/vnd.wap.wmlc");
        map.put("wmls", "text/vnd.wap.wmlscript");
        map.put("wmlsc", "application/vnd.wap.wmlscriptc");
        map.put("wmv", "video/x-ms-wmv");
        map.put("wrl", "model/vrml");
        map.put("xbm", "image/x-xbitmap");
        map.put("xht", "application/xhtml+xml");
        map.put("xhtml", "application/xhtml+xml");
        map.put("xls", "application/vnd.ms-excel");
        map.put("xml", "application/xml");
        map.put("xpm", "image/x-xpixmap");
        map.put("xsl", "application/xml");
        map.put("xslt", "application/xslt+xml");
        map.put("xul", "application/vnd.mozilla.xul+xml");
        map.put("xwd", "image/x-xwindowdump");
        map.put("xyz", "chemical/x-xyz");
        map.put("zip", "application/zip");
    }

    public static synchronized Mimetypes a() {
        try {
            Mimetypes mimetypes = f18976c;
            if (mimetypes != null) {
                return mimetypes;
            }
            f18976c = new Mimetypes();
            if (f18975b.b()) {
                HashMap map = f18976c.f18977a;
                for (String str : map.keySet()) {
                    f18975b.a("Setting mime type for extension '" + str + "' to '" + ((String) map.get(str)) + "'");
                }
            }
            return f18976c;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public String b(File file) {
        return c(file.getName());
    }

    public String c(String str) {
        int i11;
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf <= 0 || (i11 = iLastIndexOf + 1) >= str.length()) {
            Log log = f18975b;
            if (log.b()) {
                log.a("File name has no extension, mime type cannot be recognised for: " + str);
            }
        } else {
            String strB = StringUtils.b(str.substring(i11));
            if (this.f18977a.containsKey(strB)) {
                String str2 = (String) this.f18977a.get(strB);
                Log log2 = f18975b;
                if (log2.b()) {
                    log2.a("Recognised extension '" + strB + "', mimetype is: '" + str2 + "'");
                }
                return str2;
            }
            Log log3 = f18975b;
            if (log3.b()) {
                log3.a("Extension '" + strB + "' is unrecognized in mime type listing, using default mime type: '" + OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE + "'");
            }
        }
        return OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
    }
}
