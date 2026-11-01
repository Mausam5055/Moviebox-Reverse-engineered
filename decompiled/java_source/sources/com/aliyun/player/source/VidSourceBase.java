package com.aliyun.player.source;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.aliyun.player.VidPlayerConfigGen;
import com.cicada.player.utils.NativeUsed;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class VidSourceBase extends SourceBase {
    private List<Definition> mDefinitions;
    private List<MediaFormat> mFormats;
    private VidPlayerConfigGen mPlayConfig = null;
    private OutputType mOutputType = null;
    private Set<StreamType> mStreamTypes = null;
    private String mReAuthInfo = null;
    private ResultType mResultType = null;
    private long mAuthTimeout = 3600;

    public enum OutputType {
        oss(OSSConstants.RESOURCE_NAME_OSS),
        cdn(TmcConstants.CHANNEL_REQUEST_CDN);

        private String mOutputType;

        OutputType(String str) {
            this.mOutputType = str;
        }

        public String getOutputType() {
            return this.mOutputType;
        }
    }

    public enum ResultType {
        Single("Single"),
        Multiple("Multiple");

        private String mResultType;

        ResultType(String str) {
            this.mResultType = str;
        }

        public String getResultType() {
            return this.mResultType;
        }
    }

    public enum StreamType {
        video("video"),
        audio(MimeTypes.BASE_TYPE_AUDIO);

        private String mStreamType;

        StreamType(String str) {
            this.mStreamType = str;
        }

        public String getStreamType() {
            return this.mStreamType;
        }
    }

    @NativeUsed
    public long getAuthTimeout() {
        return this.mAuthTimeout;
    }

    @NativeUsed
    protected String getDefinitionStr() {
        List<Definition> list = this.mDefinitions;
        if (list == null || list.isEmpty()) {
            return null;
        }
        List<Definition> list2 = this.mDefinitions;
        Definition definition = Definition.DEFINITION_AUTO;
        if (list2.contains(definition)) {
            return definition.getName();
        }
        StringBuilder sb2 = new StringBuilder("");
        for (Definition definition2 : this.mDefinitions) {
            if (definition2 != null) {
                sb2.append(definition2.getName());
                sb2.append(",");
            }
        }
        if (sb2.length() > 1) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }

    @NativeUsed
    protected String getFormatStr() {
        List<MediaFormat> list = this.mFormats;
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder("");
        for (MediaFormat mediaFormat : this.mFormats) {
            if (mediaFormat != null) {
                sb2.append(mediaFormat.getFormat());
                sb2.append(",");
            }
        }
        if (sb2.length() > 1) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }

    public List<MediaFormat> getFormats() {
        return this.mFormats;
    }

    public OutputType getOutputType() {
        return this.mOutputType;
    }

    @NativeUsed
    protected String getOutputTypeStr() {
        OutputType outputType = this.mOutputType;
        if (outputType == null) {
            return null;
        }
        return outputType.getOutputType();
    }

    public String getPlayConfig() {
        VidPlayerConfigGen vidPlayerConfigGen = this.mPlayConfig;
        return vidPlayerConfigGen == null ? "" : vidPlayerConfigGen.genConfig();
    }

    public String getReAuthInfo() {
        return this.mReAuthInfo;
    }

    @NativeUsed
    protected String getReAuthInfoStr() {
        return this.mReAuthInfo;
    }

    public ResultType getResultType() {
        return this.mResultType;
    }

    @NativeUsed
    protected String getResultTypeStr() {
        ResultType resultType = this.mResultType;
        if (resultType == null) {
            return null;
        }
        return resultType.getResultType();
    }

    public Set<StreamType> getStreamType() {
        return this.mStreamTypes;
    }

    @NativeUsed
    protected String getStreamTypeStr() {
        if (this.mStreamTypes == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder("");
        for (StreamType streamType : this.mStreamTypes) {
            if (streamType != null) {
                sb2.append(streamType.getStreamType());
                sb2.append(",");
            }
        }
        if (sb2.length() > 1) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }

    public void setAuthTimeout(long j11) {
        this.mAuthTimeout = j11;
    }

    public void setDefinition(List<Definition> list) {
        this.mDefinitions = list;
    }

    public void setFormats(List<MediaFormat> list) {
        this.mFormats = list;
    }

    public void setOutputType(OutputType outputType) {
        this.mOutputType = outputType;
    }

    public void setPlayConfig(VidPlayerConfigGen vidPlayerConfigGen) {
        this.mPlayConfig = vidPlayerConfigGen;
    }

    public void setReAuthInfo(String str) {
        this.mReAuthInfo = str;
    }

    public void setResultType(ResultType resultType) {
        this.mResultType = resultType;
    }

    public void setStreamType(Set<StreamType> set) {
        this.mStreamTypes = set;
    }
}
