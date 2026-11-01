package com.amazonaws.services.s3.model.transform;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.alibaba.sdk.android.oss.model.CreateBucketRequest;
import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.DeleteObjectsResponse;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3HttpUtils;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.S3VersionResult;
import com.amazonaws.services.s3.internal.ServerSideEncryptionResult;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.model.AbortIncompleteMultipartUpload;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.Bucket;
import com.amazonaws.services.s3.model.BucketAccelerateConfiguration;
import com.amazonaws.services.s3.model.BucketCrossOriginConfiguration;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import com.amazonaws.services.s3.model.BucketLoggingConfiguration;
import com.amazonaws.services.s3.model.BucketReplicationConfiguration;
import com.amazonaws.services.s3.model.BucketTaggingConfiguration;
import com.amazonaws.services.s3.model.BucketVersioningConfiguration;
import com.amazonaws.services.s3.model.BucketWebsiteConfiguration;
import com.amazonaws.services.s3.model.CORSRule;
import com.amazonaws.services.s3.model.CanonicalGrantee;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CopyObjectResult;
import com.amazonaws.services.s3.model.DeleteObjectsResult;
import com.amazonaws.services.s3.model.EmailAddressGrantee;
import com.amazonaws.services.s3.model.GetBucketInventoryConfigurationResult;
import com.amazonaws.services.s3.model.GetObjectTaggingResult;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.GroupGrantee;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ListBucketAnalyticsConfigurationsResult;
import com.amazonaws.services.s3.model.ListBucketInventoryConfigurationsResult;
import com.amazonaws.services.s3.model.ListBucketMetricsConfigurationsResult;
import com.amazonaws.services.s3.model.ListObjectsV2Result;
import com.amazonaws.services.s3.model.MultiObjectDeleteException;
import com.amazonaws.services.s3.model.MultipartUpload;
import com.amazonaws.services.s3.model.MultipartUploadListing;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.Owner;
import com.amazonaws.services.s3.model.PartListing;
import com.amazonaws.services.s3.model.PartSummary;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.RedirectRule;
import com.amazonaws.services.s3.model.ReplicationDestinationConfig;
import com.amazonaws.services.s3.model.ReplicationRule;
import com.amazonaws.services.s3.model.RoutingRule;
import com.amazonaws.services.s3.model.RoutingRuleCondition;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.amazonaws.services.s3.model.S3VersionSummary;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.TagSet;
import com.amazonaws.services.s3.model.VersionListing;
import com.amazonaws.services.s3.model.analytics.AnalyticsAndOperator;
import com.amazonaws.services.s3.model.analytics.AnalyticsConfiguration;
import com.amazonaws.services.s3.model.analytics.AnalyticsExportDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsFilter;
import com.amazonaws.services.s3.model.analytics.AnalyticsPrefixPredicate;
import com.amazonaws.services.s3.model.analytics.AnalyticsS3BucketDestination;
import com.amazonaws.services.s3.model.analytics.AnalyticsTagPredicate;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysis;
import com.amazonaws.services.s3.model.analytics.StorageClassAnalysisDataExport;
import com.amazonaws.services.s3.model.inventory.InventoryConfiguration;
import com.amazonaws.services.s3.model.inventory.InventoryDestination;
import com.amazonaws.services.s3.model.inventory.InventoryFilter;
import com.amazonaws.services.s3.model.inventory.InventoryPrefixPredicate;
import com.amazonaws.services.s3.model.inventory.InventoryS3BucketDestination;
import com.amazonaws.services.s3.model.inventory.InventorySchedule;
import com.amazonaws.services.s3.model.lifecycle.LifecycleAndOperator;
import com.amazonaws.services.s3.model.lifecycle.LifecycleFilter;
import com.amazonaws.services.s3.model.lifecycle.LifecyclePrefixPredicate;
import com.amazonaws.services.s3.model.lifecycle.LifecycleTagPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsAndOperator;
import com.amazonaws.services.s3.model.metrics.MetricsConfiguration;
import com.amazonaws.services.s3.model.metrics.MetricsFilter;
import com.amazonaws.services.s3.model.metrics.MetricsPrefixPredicate;
import com.amazonaws.services.s3.model.metrics.MetricsTagPredicate;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.StringUtils;
import com.transsion.search.bean.HotRankItem;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;

/* JADX INFO: loaded from: classes2.dex */
public class XmlResponsesSaxParser {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Log f18851c = LogFactory.b(XmlResponsesSaxParser.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private XMLReader f18852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f18853b = true;

    public static class AccessControlListHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final AccessControlList f18854c = new AccessControlList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Grantee f18855d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Permission f18856e = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("AccessControlPolicy", "Owner")) {
                if (str2.equals("ID")) {
                    this.f18854c.getOwner().setId(d());
                    return;
                } else {
                    if (str2.equals("DisplayName")) {
                        this.f18854c.getOwner().setDisplayName(d());
                        return;
                    }
                    return;
                }
            }
            if (e("AccessControlPolicy", "AccessControlList")) {
                if (str2.equals("Grant")) {
                    this.f18854c.grantPermission(this.f18855d, this.f18856e);
                    this.f18855d = null;
                    this.f18856e = null;
                    return;
                }
                return;
            }
            if (e("AccessControlPolicy", "AccessControlList", "Grant")) {
                if (str2.equals("Permission")) {
                    this.f18856e = Permission.parsePermission(d());
                }
            } else if (e("AccessControlPolicy", "AccessControlList", "Grant", "Grantee")) {
                if (str2.equals("ID")) {
                    this.f18855d.setIdentifier(d());
                    return;
                }
                if (str2.equals("EmailAddress")) {
                    this.f18855d.setIdentifier(d());
                } else if (str2.equals("URI")) {
                    this.f18855d = GroupGrantee.parseGroupGrantee(d());
                } else if (str2.equals("DisplayName")) {
                    ((CanonicalGrantee) this.f18855d).setDisplayName(d());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("AccessControlPolicy")) {
                if (str2.equals("Owner")) {
                    this.f18854c.setOwner(new Owner());
                }
            } else if (e("AccessControlPolicy", "AccessControlList", "Grant") && str2.equals("Grantee")) {
                String strI = XmlResponsesSaxParser.i("xsi:type", attributes);
                if ("AmazonCustomerByEmail".equals(strI)) {
                    this.f18855d = new EmailAddressGrantee(null);
                } else if ("CanonicalUser".equals(strI)) {
                    this.f18855d = new CanonicalGrantee(null);
                } else {
                    HotRankItem.CATE_GROUP.equals(strI);
                }
            }
        }
    }

    public static class BucketAccelerateConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BucketAccelerateConfiguration f18857c = new BucketAccelerateConfiguration(null);

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("AccelerateConfiguration") && str2.equals("Status")) {
                this.f18857c.a(d());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class BucketCrossOriginConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CORSRule f18859d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BucketCrossOriginConfiguration f18858c = new BucketCrossOriginConfiguration(new ArrayList());

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List f18860e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List f18861f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private List f18862g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private List f18863h = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("CORSConfiguration")) {
                if (str2.equals("CORSRule")) {
                    this.f18859d.a(this.f18863h);
                    this.f18859d.b(this.f18860e);
                    this.f18859d.c(this.f18861f);
                    this.f18859d.d(this.f18862g);
                    this.f18863h = null;
                    this.f18860e = null;
                    this.f18861f = null;
                    this.f18862g = null;
                    this.f18858c.getRules().add(this.f18859d);
                    this.f18859d = null;
                    return;
                }
                return;
            }
            if (e("CORSConfiguration", "CORSRule")) {
                if (str2.equals("ID")) {
                    this.f18859d.e(d());
                    return;
                }
                if (str2.equals("AllowedOrigin")) {
                    this.f18861f.add(d());
                    return;
                }
                if (str2.equals("AllowedMethod")) {
                    this.f18860e.add(CORSRule.AllowedMethods.fromValue(d()));
                    return;
                }
                if (str2.equals("MaxAgeSeconds")) {
                    this.f18859d.f(Integer.parseInt(d()));
                } else if (str2.equals("ExposeHeader")) {
                    this.f18862g.add(d());
                } else if (str2.equals("AllowedHeader")) {
                    this.f18863h.add(d());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("CORSConfiguration")) {
                if (str2.equals("CORSRule")) {
                    this.f18859d = new CORSRule();
                    return;
                }
                return;
            }
            if (e("CORSConfiguration", "CORSRule")) {
                if (str2.equals("AllowedOrigin")) {
                    if (this.f18861f == null) {
                        this.f18861f = new ArrayList();
                    }
                } else if (str2.equals("AllowedMethod")) {
                    if (this.f18860e == null) {
                        this.f18860e = new ArrayList();
                    }
                } else if (str2.equals("ExposeHeader")) {
                    if (this.f18862g == null) {
                        this.f18862g = new ArrayList();
                    }
                } else if (str2.equals("AllowedHeader") && this.f18863h == null) {
                    this.f18863h = new LinkedList();
                }
            }
        }
    }

    public static class BucketLifecycleConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BucketLifecycleConfiguration f18864c = new BucketLifecycleConfiguration(new ArrayList());

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private BucketLifecycleConfiguration.Rule f18865d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private BucketLifecycleConfiguration.Transition f18866e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private BucketLifecycleConfiguration.NoncurrentVersionTransition f18867f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private AbortIncompleteMultipartUpload f18868g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private LifecycleFilter f18869h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private List f18870i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f18871j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f18872k;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("LifecycleConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f18864c.getRules().add(this.f18865d);
                    this.f18865d = null;
                    return;
                }
                return;
            }
            if (e("LifecycleConfiguration", "Rule")) {
                if (str2.equals("ID")) {
                    this.f18865d.setId(d());
                    return;
                }
                if (str2.equals("Prefix")) {
                    this.f18865d.setPrefix(d());
                    return;
                }
                if (str2.equals("Status")) {
                    this.f18865d.setStatus(d());
                    return;
                }
                if (str2.equals("Transition")) {
                    this.f18865d.addTransition(this.f18866e);
                    this.f18866e = null;
                    return;
                }
                if (str2.equals("NoncurrentVersionTransition")) {
                    this.f18865d.addNoncurrentVersionTransition(this.f18867f);
                    this.f18867f = null;
                    return;
                } else if (str2.equals("AbortIncompleteMultipartUpload")) {
                    this.f18865d.setAbortIncompleteMultipartUpload(this.f18868g);
                    this.f18868g = null;
                    return;
                } else {
                    if (str2.equals("Filter")) {
                        this.f18865d.setFilter(this.f18869h);
                        this.f18869h = null;
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Expiration")) {
                if (str2.equals(HttpHeaders.DATE)) {
                    this.f18865d.setExpirationDate(ServiceUtils.d(d()));
                    return;
                }
                if (str2.equals("Days")) {
                    this.f18865d.setExpirationInDays(Integer.parseInt(d()));
                    return;
                } else {
                    if (str2.equals("ExpiredObjectDeleteMarker") && "true".equals(d())) {
                        this.f18865d.setExpiredObjectDeleteMarker(true);
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Transition")) {
                if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                    this.f18866e.setStorageClass(d());
                    return;
                } else if (str2.equals(HttpHeaders.DATE)) {
                    this.f18866e.setDate(ServiceUtils.d(d()));
                    return;
                } else {
                    if (str2.equals("Days")) {
                        this.f18866e.setDays(Integer.parseInt(d()));
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "NoncurrentVersionExpiration")) {
                if (str2.equals("NoncurrentDays")) {
                    this.f18865d.setNoncurrentVersionExpirationInDays(Integer.parseInt(d()));
                    return;
                }
                return;
            }
            if (e("LifecycleConfiguration", "Rule", "NoncurrentVersionTransition")) {
                if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                    this.f18867f.setStorageClass(d());
                    return;
                } else {
                    if (str2.equals("NoncurrentDays")) {
                        this.f18867f.setDays(Integer.parseInt(d()));
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "AbortIncompleteMultipartUpload")) {
                if (str2.equals("DaysAfterInitiation")) {
                    this.f18868g.setDaysAfterInitiation(Integer.parseInt(d()));
                    return;
                }
                return;
            }
            if (e("LifecycleConfiguration", "Rule", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18869h.setPredicate(new LifecyclePrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18869h.setPredicate(new LifecycleTagPredicate(new Tag(this.f18871j, this.f18872k)));
                    this.f18871j = null;
                    this.f18872k = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18869h.setPredicate(new LifecycleAndOperator(this.f18870i));
                        this.f18870i = null;
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18871j = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18872k = d();
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18870i.add(new LifecyclePrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18870i.add(new LifecycleTagPredicate(new Tag(this.f18871j, this.f18872k)));
                        this.f18871j = null;
                        this.f18872k = null;
                        return;
                    }
                    return;
                }
            }
            if (e("LifecycleConfiguration", "Rule", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18871j = d();
                } else if (str2.equals("Value")) {
                    this.f18872k = d();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("LifecycleConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f18865d = new BucketLifecycleConfiguration.Rule();
                    return;
                }
                return;
            }
            if (!e("LifecycleConfiguration", "Rule")) {
                if (e("LifecycleConfiguration", "Rule", "Filter") && str2.equals("And")) {
                    this.f18870i = new ArrayList();
                    return;
                }
                return;
            }
            if (str2.equals("Transition")) {
                this.f18866e = new BucketLifecycleConfiguration.Transition();
                return;
            }
            if (str2.equals("NoncurrentVersionTransition")) {
                this.f18867f = new BucketLifecycleConfiguration.NoncurrentVersionTransition();
            } else if (str2.equals("AbortIncompleteMultipartUpload")) {
                this.f18868g = new AbortIncompleteMultipartUpload();
            } else if (str2.equals("Filter")) {
                this.f18869h = new LifecycleFilter();
            }
        }
    }

    public static class BucketLocationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f18873c = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (a() && str2.equals(CreateBucketRequest.TAB_LOCATIONCONSTRAINT)) {
                String strD = d();
                if (strD.length() == 0) {
                    this.f18873c = null;
                } else {
                    this.f18873c = strD;
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class BucketLoggingConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BucketLoggingConfiguration f18874c = new BucketLoggingConfiguration();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("BucketLoggingStatus", "LoggingEnabled")) {
                if (str2.equals("TargetBucket")) {
                    this.f18874c.setDestinationBucketName(d());
                } else if (str2.equals("TargetPrefix")) {
                    this.f18874c.setLogFilePrefix(d());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class BucketReplicationConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BucketReplicationConfiguration f18875c = new BucketReplicationConfiguration();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f18876d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ReplicationRule f18877e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ReplicationDestinationConfig f18878f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("ReplicationConfiguration")) {
                if (!str2.equals("Rule")) {
                    if (str2.equals("Role")) {
                        this.f18875c.setRoleARN(d());
                        return;
                    }
                    return;
                } else {
                    this.f18875c.addRule(this.f18876d, this.f18877e);
                    this.f18877e = null;
                    this.f18876d = null;
                    this.f18878f = null;
                    return;
                }
            }
            if (!e("ReplicationConfiguration", "Rule")) {
                if (e("ReplicationConfiguration", "Rule", "Destination")) {
                    if (str2.equals("Bucket")) {
                        this.f18878f.a(d());
                        return;
                    } else {
                        if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                            this.f18878f.b(d());
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (str2.equals("ID")) {
                this.f18876d = d();
                return;
            }
            if (str2.equals("Prefix")) {
                this.f18877e.b(d());
            } else if (str2.equals("Status")) {
                this.f18877e.c(d());
            } else if (str2.equals("Destination")) {
                this.f18877e.a(this.f18878f);
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ReplicationConfiguration")) {
                if (str2.equals("Rule")) {
                    this.f18877e = new ReplicationRule();
                }
            } else if (e("ReplicationConfiguration", "Rule") && str2.equals("Destination")) {
                this.f18878f = new ReplicationDestinationConfig();
            }
        }
    }

    public static class BucketTaggingConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BucketTaggingConfiguration f18879c = new BucketTaggingConfiguration();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Map f18880d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f18881e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f18882f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            String str4;
            if (e("Tagging")) {
                if (str2.equals("TagSet")) {
                    this.f18879c.getAllTagSets().add(new TagSet(this.f18880d));
                    this.f18880d = null;
                    return;
                }
                return;
            }
            if (e("Tagging", "TagSet")) {
                if (str2.equals("Tag")) {
                    String str5 = this.f18881e;
                    if (str5 != null && (str4 = this.f18882f) != null) {
                        this.f18880d.put(str5, str4);
                    }
                    this.f18881e = null;
                    this.f18882f = null;
                    return;
                }
                return;
            }
            if (e("Tagging", "TagSet", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18881e = d();
                } else if (str2.equals("Value")) {
                    this.f18882f = d();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("Tagging") && str2.equals("TagSet")) {
                this.f18880d = new HashMap();
            }
        }
    }

    public static class BucketVersioningConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BucketVersioningConfiguration f18883c = new BucketVersioningConfiguration();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("VersioningConfiguration")) {
                if (str2.equals("Status")) {
                    this.f18883c.setStatus(d());
                    return;
                }
                if (str2.equals("MfaDelete")) {
                    String strD = d();
                    if (strD.equals(BucketLifecycleConfiguration.DISABLED)) {
                        this.f18883c.setMfaDeleteEnabled(Boolean.FALSE);
                    } else if (strD.equals("Enabled")) {
                        this.f18883c.setMfaDeleteEnabled(Boolean.TRUE);
                    } else {
                        this.f18883c.setMfaDeleteEnabled(null);
                    }
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public static class BucketWebsiteConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final BucketWebsiteConfiguration f18884c = new BucketWebsiteConfiguration(null);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private RoutingRuleCondition f18885d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private RedirectRule f18886e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private RoutingRule f18887f = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("WebsiteConfiguration")) {
                if (str2.equals("RedirectAllRequestsTo")) {
                    this.f18884c.setRedirectAllRequestsTo(this.f18886e);
                    this.f18886e = null;
                    return;
                }
                return;
            }
            if (e("WebsiteConfiguration", "IndexDocument")) {
                if (str2.equals("Suffix")) {
                    this.f18884c.setIndexDocumentSuffix(d());
                    return;
                }
                return;
            }
            if (e("WebsiteConfiguration", "ErrorDocument")) {
                if (str2.equals("Key")) {
                    this.f18884c.setErrorDocument(d());
                    return;
                }
                return;
            }
            if (e("WebsiteConfiguration", "RoutingRules")) {
                if (str2.equals("RoutingRule")) {
                    this.f18884c.getRoutingRules().add(this.f18887f);
                    this.f18887f = null;
                    return;
                }
                return;
            }
            if (e("WebsiteConfiguration", "RoutingRules", "RoutingRule")) {
                if (str2.equals("Condition")) {
                    this.f18887f.a(this.f18885d);
                    this.f18885d = null;
                    return;
                } else {
                    if (str2.equals("Redirect")) {
                        this.f18887f.b(this.f18886e);
                        this.f18886e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("WebsiteConfiguration", "RoutingRules", "RoutingRule", "Condition")) {
                if (str2.equals("KeyPrefixEquals")) {
                    this.f18885d.b(d());
                    return;
                } else {
                    if (str2.equals("HttpErrorCodeReturnedEquals")) {
                        this.f18885d.a(d());
                        return;
                    }
                    return;
                }
            }
            if (e("WebsiteConfiguration", "RedirectAllRequestsTo") || e("WebsiteConfiguration", "RoutingRules", "RoutingRule", "Redirect")) {
                if (str2.equals("Protocol")) {
                    this.f18886e.c(d());
                    return;
                }
                if (str2.equals("HostName")) {
                    this.f18886e.a(d());
                    return;
                }
                if (str2.equals("ReplaceKeyPrefixWith")) {
                    this.f18886e.d(d());
                } else if (str2.equals("ReplaceKeyWith")) {
                    this.f18886e.e(d());
                } else if (str2.equals("HttpRedirectCode")) {
                    this.f18886e.b(d());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("WebsiteConfiguration")) {
                if (str2.equals("RedirectAllRequestsTo")) {
                    this.f18886e = new RedirectRule();
                }
            } else if (e("WebsiteConfiguration", "RoutingRules")) {
                if (str2.equals("RoutingRule")) {
                    this.f18887f = new RoutingRule();
                }
            } else if (e("WebsiteConfiguration", "RoutingRules", "RoutingRule")) {
                if (str2.equals("Condition")) {
                    this.f18885d = new RoutingRuleCondition();
                } else if (str2.equals("Redirect")) {
                    this.f18886e = new RedirectRule();
                }
            }
        }
    }

    public static class CompleteMultipartUploadHandler extends AbstractSSEHandler implements ObjectExpirationResult, S3VersionResult, S3RequesterChargedResult {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CompleteMultipartUploadResult f18888c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private AmazonS3Exception f18889d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f18890e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f18891f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f18892g;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            AmazonS3Exception amazonS3Exception;
            if (a()) {
                if (!str2.equals("Error") || (amazonS3Exception = this.f18889d) == null) {
                    return;
                }
                amazonS3Exception.setErrorCode(this.f18892g);
                this.f18889d.setRequestId(this.f18891f);
                this.f18889d.setExtendedRequestId(this.f18890e);
                return;
            }
            if (e("CompleteMultipartUploadResult")) {
                if (str2.equals(HttpHeaders.LOCATION)) {
                    this.f18888c.setLocation(d());
                    return;
                }
                if (str2.equals("Bucket")) {
                    this.f18888c.setBucketName(d());
                    return;
                } else if (str2.equals("Key")) {
                    this.f18888c.setKey(d());
                    return;
                } else {
                    if (str2.equals("ETag")) {
                        this.f18888c.setETag(ServiceUtils.f(d()));
                        return;
                    }
                    return;
                }
            }
            if (e("Error")) {
                if (str2.equals("Code")) {
                    this.f18892g = d();
                    return;
                }
                if (str2.equals("Message")) {
                    this.f18889d = new AmazonS3Exception(d());
                } else if (str2.equals("RequestId")) {
                    this.f18891f = d();
                } else if (str2.equals("HostId")) {
                    this.f18890e = d();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (a() && str2.equals("CompleteMultipartUploadResult")) {
                this.f18888c = new CompleteMultipartUploadResult();
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractSSEHandler
        protected ServerSideEncryptionResult f() {
            return this.f18888c;
        }

        public AmazonS3Exception g() {
            return this.f18889d;
        }

        public CompleteMultipartUploadResult h() {
            return this.f18888c;
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void setExpirationTime(Date date) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f18888c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setExpirationTime(date);
            }
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void setExpirationTimeRuleId(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f18888c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setExpirationTimeRuleId(str);
            }
        }

        @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
        public void setRequesterCharged(boolean z10) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f18888c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setRequesterCharged(z10);
            }
        }

        @Override // com.amazonaws.services.s3.internal.S3VersionResult
        public void setVersionId(String str) {
            CompleteMultipartUploadResult completeMultipartUploadResult = this.f18888c;
            if (completeMultipartUploadResult != null) {
                completeMultipartUploadResult.setVersionId(str);
            }
        }
    }

    public static class CopyObjectResultHandler extends AbstractSSEHandler implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CopyObjectResult f18893c = new CopyObjectResult();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f18894d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f18895e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f18896f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f18897g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f18898h = false;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("CopyObjectResult") || e("CopyPartResult")) {
                if (str2.equals("LastModified")) {
                    this.f18893c.setLastModifiedDate(ServiceUtils.d(d()));
                    return;
                } else {
                    if (str2.equals("ETag")) {
                        this.f18893c.setETag(ServiceUtils.f(d()));
                        return;
                    }
                    return;
                }
            }
            if (e("Error")) {
                if (str2.equals("Code")) {
                    this.f18894d = d();
                    return;
                }
                if (str2.equals("Message")) {
                    this.f18895e = d();
                } else if (str2.equals("RequestId")) {
                    this.f18896f = d();
                } else if (str2.equals("HostId")) {
                    this.f18897g = d();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (a()) {
                if (str2.equals("CopyObjectResult") || str2.equals("CopyPartResult")) {
                    this.f18898h = false;
                } else if (str2.equals("Error")) {
                    this.f18898h = true;
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractSSEHandler
        protected ServerSideEncryptionResult f() {
            return this.f18893c;
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void setExpirationTime(Date date) {
            this.f18893c.setExpirationTime(date);
        }

        @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
        public void setExpirationTimeRuleId(String str) {
            this.f18893c.setExpirationTimeRuleId(str);
        }

        @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
        public void setRequesterCharged(boolean z10) {
            this.f18893c.setRequesterCharged(z10);
        }

        @Override // com.amazonaws.services.s3.internal.S3VersionResult
        public void setVersionId(String str) {
            this.f18893c.setVersionId(str);
        }
    }

    public static class DeleteObjectsHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final DeleteObjectsResponse f18899c = new DeleteObjectsResponse();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private DeleteObjectsResult.DeletedObject f18900d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private MultiObjectDeleteException.DeleteError f18901e = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("DeleteResult")) {
                if (str2.equals("Deleted")) {
                    this.f18899c.a().add(this.f18900d);
                    this.f18900d = null;
                    return;
                } else {
                    if (str2.equals("Error")) {
                        this.f18899c.b().add(this.f18901e);
                        this.f18901e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("DeleteResult", "Deleted")) {
                if (str2.equals("Key")) {
                    this.f18900d.setKey(d());
                    return;
                }
                if (str2.equals("VersionId")) {
                    this.f18900d.setVersionId(d());
                    return;
                } else if (str2.equals("DeleteMarker")) {
                    this.f18900d.setDeleteMarker(d().equals("true"));
                    return;
                } else {
                    if (str2.equals("DeleteMarkerVersionId")) {
                        this.f18900d.setDeleteMarkerVersionId(d());
                        return;
                    }
                    return;
                }
            }
            if (e("DeleteResult", "Error")) {
                if (str2.equals("Key")) {
                    this.f18901e.b(d());
                    return;
                }
                if (str2.equals("VersionId")) {
                    this.f18901e.d(d());
                } else if (str2.equals("Code")) {
                    this.f18901e.a(d());
                } else if (str2.equals("Message")) {
                    this.f18901e.c(d());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("DeleteResult")) {
                if (str2.equals("Deleted")) {
                    this.f18900d = new DeleteObjectsResult.DeletedObject();
                } else if (str2.equals("Error")) {
                    this.f18901e = new MultiObjectDeleteException.DeleteError();
                }
            }
        }
    }

    public static class GetBucketAnalyticsConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final AnalyticsConfiguration f18902c = new AnalyticsConfiguration();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private AnalyticsFilter f18903d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List f18904e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private StorageClassAnalysis f18905f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private StorageClassAnalysisDataExport f18906g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private AnalyticsExportDestination f18907h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private AnalyticsS3BucketDestination f18908i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f18909j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f18910k;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("AnalyticsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18902c.setId(d());
                    return;
                } else if (str2.equals("Filter")) {
                    this.f18902c.setFilter(this.f18903d);
                    return;
                } else {
                    if (str2.equals("StorageClassAnalysis")) {
                        this.f18902c.setStorageClassAnalysis(this.f18905f);
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18903d.setPredicate(new AnalyticsPrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18903d.setPredicate(new AnalyticsTagPredicate(new Tag(this.f18909j, this.f18910k)));
                    this.f18909j = null;
                    this.f18910k = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18903d.setPredicate(new AnalyticsAndOperator(this.f18904e));
                        this.f18904e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18909j = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18910k = d();
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18904e.add(new AnalyticsPrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18904e.add(new AnalyticsTagPredicate(new Tag(this.f18909j, this.f18910k)));
                        this.f18909j = null;
                        this.f18910k = null;
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18909j = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18910k = d();
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f18905f.setDataExport(this.f18906g);
                    return;
                }
                return;
            }
            if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("OutputSchemaVersion")) {
                    this.f18906g.setOutputSchemaVersion(d());
                    return;
                } else {
                    if (str2.equals("Destination")) {
                        this.f18906g.setDestination(this.f18907h);
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f18907h.setS3BucketDestination(this.f18908i);
                }
            } else if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination", "S3BucketDestination")) {
                if (str2.equals("Format")) {
                    this.f18908i.setFormat(d());
                    return;
                }
                if (str2.equals("BucketAccountId")) {
                    this.f18908i.setBucketAccountId(d());
                } else if (str2.equals("Bucket")) {
                    this.f18908i.setBucketArn(d());
                } else if (str2.equals("Prefix")) {
                    this.f18908i.setPrefix(d());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("AnalyticsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f18903d = new AnalyticsFilter();
                    return;
                } else {
                    if (str2.equals("StorageClassAnalysis")) {
                        this.f18905f = new StorageClassAnalysis();
                        return;
                    }
                    return;
                }
            }
            if (e("AnalyticsConfiguration", "Filter")) {
                if (str2.equals("And")) {
                    this.f18904e = new ArrayList();
                }
            } else if (e("AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f18906g = new StorageClassAnalysisDataExport();
                }
            } else if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("Destination")) {
                    this.f18907h = new AnalyticsExportDestination();
                }
            } else if (e("AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination") && str2.equals("S3BucketDestination")) {
                this.f18908i = new AnalyticsS3BucketDestination();
            }
        }
    }

    public static class GetBucketInventoryConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final GetBucketInventoryConfigurationResult f18911c = new GetBucketInventoryConfigurationResult();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final InventoryConfiguration f18912d = new InventoryConfiguration();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List f18913e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private InventoryDestination f18914f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private InventoryFilter f18915g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private InventoryS3BucketDestination f18916h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private InventorySchedule f18917i;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("InventoryConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18912d.setId(d());
                    return;
                }
                if (str2.equals("Destination")) {
                    this.f18912d.setDestination(this.f18914f);
                    this.f18914f = null;
                    return;
                }
                if (str2.equals("IsEnabled")) {
                    this.f18912d.setEnabled(Boolean.valueOf("true".equals(d())));
                    return;
                }
                if (str2.equals("Filter")) {
                    this.f18912d.setInventoryFilter(this.f18915g);
                    this.f18915g = null;
                    return;
                }
                if (str2.equals("IncludedObjectVersions")) {
                    this.f18912d.setIncludedObjectVersions(d());
                    return;
                }
                if (str2.equals("Schedule")) {
                    this.f18912d.setSchedule(this.f18917i);
                    this.f18917i = null;
                    return;
                } else {
                    if (str2.equals("OptionalFields")) {
                        this.f18912d.setOptionalFields(this.f18913e);
                        this.f18913e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("InventoryConfiguration", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f18914f.setS3BucketDestination(this.f18916h);
                    this.f18916h = null;
                    return;
                }
                return;
            }
            if (e("InventoryConfiguration", "Destination", "S3BucketDestination")) {
                if (str2.equals("AccountId")) {
                    this.f18916h.setAccountId(d());
                    return;
                }
                if (str2.equals("Bucket")) {
                    this.f18916h.setBucketArn(d());
                    return;
                } else if (str2.equals("Format")) {
                    this.f18916h.setFormat(d());
                    return;
                } else {
                    if (str2.equals("Prefix")) {
                        this.f18916h.setPrefix(d());
                        return;
                    }
                    return;
                }
            }
            if (e("InventoryConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18915g.setPredicate(new InventoryPrefixPredicate(d()));
                }
            } else if (e("InventoryConfiguration", "Schedule")) {
                if (str2.equals("Frequency")) {
                    this.f18917i.setFrequency(d());
                }
            } else if (e("InventoryConfiguration", "OptionalFields") && str2.equals("Field")) {
                this.f18913e.add(d());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (!e("InventoryConfiguration")) {
                if (e("InventoryConfiguration", "Destination") && str2.equals("S3BucketDestination")) {
                    this.f18916h = new InventoryS3BucketDestination();
                    return;
                }
                return;
            }
            if (str2.equals("Destination")) {
                this.f18914f = new InventoryDestination();
                return;
            }
            if (str2.equals("Filter")) {
                this.f18915g = new InventoryFilter();
            } else if (str2.equals("Schedule")) {
                this.f18917i = new InventorySchedule();
            } else if (str2.equals("OptionalFields")) {
                this.f18913e = new ArrayList();
            }
        }
    }

    public static class GetBucketMetricsConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final MetricsConfiguration f18918c = new MetricsConfiguration();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MetricsFilter f18919d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List f18920e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f18921f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f18922g;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("MetricsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18918c.setId(d());
                    return;
                } else {
                    if (str2.equals("Filter")) {
                        this.f18918c.setFilter(this.f18919d);
                        this.f18919d = null;
                        return;
                    }
                    return;
                }
            }
            if (e("MetricsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18919d.setPredicate(new MetricsPrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18919d.setPredicate(new MetricsTagPredicate(new Tag(this.f18921f, this.f18922g)));
                    this.f18921f = null;
                    this.f18922g = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18919d.setPredicate(new MetricsAndOperator(this.f18920e));
                        this.f18920e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("MetricsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18921f = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18922g = d();
                        return;
                    }
                    return;
                }
            }
            if (e("MetricsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18920e.add(new MetricsPrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18920e.add(new MetricsTagPredicate(new Tag(this.f18921f, this.f18922g)));
                        this.f18921f = null;
                        this.f18922g = null;
                        return;
                    }
                    return;
                }
            }
            if (e("MetricsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18921f = d();
                } else if (str2.equals("Value")) {
                    this.f18922g = d();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("MetricsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f18919d = new MetricsFilter();
                }
            } else if (e("MetricsConfiguration", "Filter") && str2.equals("And")) {
                this.f18920e = new ArrayList();
            }
        }
    }

    public static class GetObjectTaggingHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private GetObjectTaggingResult f18923c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List f18924d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f18925e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f18926f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("Tagging") && str2.equals("TagSet")) {
                this.f18923c = new GetObjectTaggingResult(this.f18924d);
                this.f18924d = null;
            }
            if (e("Tagging", "TagSet")) {
                if (str2.equals("Tag")) {
                    this.f18924d.add(new Tag(this.f18926f, this.f18925e));
                    this.f18926f = null;
                    this.f18925e = null;
                    return;
                }
                return;
            }
            if (e("Tagging", "TagSet", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18926f = d();
                } else if (str2.equals("Value")) {
                    this.f18925e = d();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("Tagging") && str2.equals("TagSet")) {
                this.f18924d = new ArrayList();
            }
        }
    }

    public static class InitiateMultipartUploadHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final InitiateMultipartUploadResult f18927c = new InitiateMultipartUploadResult();

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("InitiateMultipartUploadResult")) {
                if (str2.equals("Bucket")) {
                    this.f18927c.setBucketName(d());
                } else if (str2.equals("Key")) {
                    this.f18927c.setKey(d());
                } else if (str2.equals("UploadId")) {
                    this.f18927c.b(d());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }

        public InitiateMultipartUploadResult f() {
            return this.f18927c;
        }
    }

    public static class ListAllMyBucketsHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List f18928c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Owner f18929d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Bucket f18930e = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("ListAllMyBucketsResult", "Owner")) {
                if (str2.equals("ID")) {
                    this.f18929d.setId(d());
                    return;
                } else {
                    if (str2.equals("DisplayName")) {
                        this.f18929d.setDisplayName(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListAllMyBucketsResult", "Buckets")) {
                if (str2.equals("Bucket")) {
                    this.f18928c.add(this.f18930e);
                    this.f18930e = null;
                    return;
                }
                return;
            }
            if (e("ListAllMyBucketsResult", "Buckets", "Bucket")) {
                if (str2.equals("Name")) {
                    this.f18930e.setName(d());
                } else if (str2.equals("CreationDate")) {
                    this.f18930e.setCreationDate(DateUtils.h(d()));
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListAllMyBucketsResult")) {
                if (str2.equals("Owner")) {
                    this.f18929d = new Owner();
                }
            } else if (e("ListAllMyBucketsResult", "Buckets") && str2.equals("Bucket")) {
                Bucket bucket = new Bucket();
                this.f18930e = bucket;
                bucket.setOwner(this.f18929d);
            }
        }
    }

    public static class ListBucketAnalyticsConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ListBucketAnalyticsConfigurationsResult f18931c = new ListBucketAnalyticsConfigurationsResult();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private AnalyticsConfiguration f18932d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private AnalyticsFilter f18933e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List f18934f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private StorageClassAnalysis f18935g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private StorageClassAnalysisDataExport f18936h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private AnalyticsExportDestination f18937i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private AnalyticsS3BucketDestination f18938j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f18939k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private String f18940l;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("ListBucketAnalyticsConfigurationsResult")) {
                if (str2.equals("AnalyticsConfiguration")) {
                    if (this.f18931c.getAnalyticsConfigurationList() == null) {
                        this.f18931c.setAnalyticsConfigurationList(new ArrayList());
                    }
                    this.f18931c.getAnalyticsConfigurationList().add(this.f18932d);
                    this.f18932d = null;
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18931c.setTruncated("true".equals(d()));
                    return;
                } else if (str2.equals("ContinuationToken")) {
                    this.f18931c.setContinuationToken(d());
                    return;
                } else {
                    if (str2.equals("NextContinuationToken")) {
                        this.f18931c.setNextContinuationToken(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18932d.setId(d());
                    return;
                } else if (str2.equals("Filter")) {
                    this.f18932d.setFilter(this.f18933e);
                    return;
                } else {
                    if (str2.equals("StorageClassAnalysis")) {
                        this.f18932d.setStorageClassAnalysis(this.f18935g);
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18933e.setPredicate(new AnalyticsPrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18933e.setPredicate(new AnalyticsTagPredicate(new Tag(this.f18939k, this.f18940l)));
                    this.f18939k = null;
                    this.f18940l = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18933e.setPredicate(new AnalyticsAndOperator(this.f18934f));
                        this.f18934f = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18939k = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18940l = d();
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18934f.add(new AnalyticsPrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18934f.add(new AnalyticsTagPredicate(new Tag(this.f18939k, this.f18940l)));
                        this.f18939k = null;
                        this.f18940l = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18939k = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18940l = d();
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f18935g.setDataExport(this.f18936h);
                    return;
                }
                return;
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("OutputSchemaVersion")) {
                    this.f18936h.setOutputSchemaVersion(d());
                    return;
                } else {
                    if (str2.equals("Destination")) {
                        this.f18936h.setDestination(this.f18937i);
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f18937i.setS3BucketDestination(this.f18938j);
                }
            } else if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination", "S3BucketDestination")) {
                if (str2.equals("Format")) {
                    this.f18938j.setFormat(d());
                    return;
                }
                if (str2.equals("BucketAccountId")) {
                    this.f18938j.setBucketAccountId(d());
                } else if (str2.equals("Bucket")) {
                    this.f18938j.setBucketArn(d());
                } else if (str2.equals("Prefix")) {
                    this.f18938j.setPrefix(d());
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListBucketAnalyticsConfigurationsResult")) {
                if (str2.equals("AnalyticsConfiguration")) {
                    this.f18932d = new AnalyticsConfiguration();
                    return;
                }
                return;
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f18933e = new AnalyticsFilter();
                    return;
                } else {
                    if (str2.equals("StorageClassAnalysis")) {
                        this.f18935g = new StorageClassAnalysis();
                        return;
                    }
                    return;
                }
            }
            if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "Filter")) {
                if (str2.equals("And")) {
                    this.f18934f = new ArrayList();
                }
            } else if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis")) {
                if (str2.equals("DataExport")) {
                    this.f18936h = new StorageClassAnalysisDataExport();
                }
            } else if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport")) {
                if (str2.equals("Destination")) {
                    this.f18937i = new AnalyticsExportDestination();
                }
            } else if (e("ListBucketAnalyticsConfigurationsResult", "AnalyticsConfiguration", "StorageClassAnalysis", "DataExport", "Destination") && str2.equals("S3BucketDestination")) {
                this.f18938j = new AnalyticsS3BucketDestination();
            }
        }
    }

    public static class ListBucketHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ObjectListing f18941c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f18942d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private S3ObjectSummary f18943e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Owner f18944f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f18945g;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            String strA = null;
            if (a()) {
                if (str2.equals("ListBucketResult") && this.f18941c.isTruncated() && this.f18941c.getNextMarker() == null) {
                    if (!this.f18941c.getObjectSummaries().isEmpty()) {
                        strA = this.f18941c.getObjectSummaries().get(this.f18941c.getObjectSummaries().size() - 1).a();
                    } else if (this.f18941c.getCommonPrefixes().isEmpty()) {
                        XmlResponsesSaxParser.f18851c.f("S3 response indicates truncated results, but contains no object summaries or common prefixes.");
                    } else {
                        strA = this.f18941c.getCommonPrefixes().get(this.f18941c.getCommonPrefixes().size() - 1);
                    }
                    this.f18941c.setNextMarker(strA);
                    return;
                }
                return;
            }
            if (!e("ListBucketResult")) {
                if (!e("ListBucketResult", "Contents")) {
                    if (!e("ListBucketResult", "Contents", "Owner")) {
                        if (e("ListBucketResult", "CommonPrefixes") && str2.equals("Prefix")) {
                            this.f18941c.getCommonPrefixes().add(XmlResponsesSaxParser.h(d(), this.f18942d));
                            return;
                        }
                        return;
                    }
                    if (str2.equals("ID")) {
                        this.f18944f.setId(d());
                        return;
                    } else {
                        if (str2.equals("DisplayName")) {
                            this.f18944f.setDisplayName(d());
                            return;
                        }
                        return;
                    }
                }
                if (str2.equals("Key")) {
                    String strD = d();
                    this.f18945g = strD;
                    this.f18943e.d(XmlResponsesSaxParser.h(strD, this.f18942d));
                    return;
                }
                if (str2.equals("LastModified")) {
                    this.f18943e.e(ServiceUtils.d(d()));
                    return;
                }
                if (str2.equals("ETag")) {
                    this.f18943e.c(ServiceUtils.f(d()));
                    return;
                }
                if (str2.equals("Size")) {
                    this.f18943e.g(XmlResponsesSaxParser.m(d()));
                    return;
                }
                if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                    this.f18943e.h(d());
                    return;
                } else {
                    if (str2.equals("Owner")) {
                        this.f18943e.f(this.f18944f);
                        this.f18944f = null;
                        return;
                    }
                    return;
                }
            }
            if (str2.equals("Name")) {
                this.f18941c.setBucketName(d());
                if (XmlResponsesSaxParser.f18851c.b()) {
                    XmlResponsesSaxParser.f18851c.a("Examining listing for bucket: " + this.f18941c.getBucketName());
                    return;
                }
                return;
            }
            if (str2.equals("Prefix")) {
                this.f18941c.setPrefix(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18942d));
                return;
            }
            if (str2.equals("Marker")) {
                this.f18941c.setMarker(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18942d));
                return;
            }
            if (str2.equals("NextMarker")) {
                this.f18941c.setNextMarker(XmlResponsesSaxParser.h(d(), this.f18942d));
                return;
            }
            if (str2.equals("MaxKeys")) {
                this.f18941c.setMaxKeys(XmlResponsesSaxParser.l(d()));
                return;
            }
            if (str2.equals("Delimiter")) {
                this.f18941c.setDelimiter(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18942d));
                return;
            }
            if (str2.equals("EncodingType")) {
                this.f18941c.setEncodingType(XmlResponsesSaxParser.g(d()));
                return;
            }
            if (!str2.equals("IsTruncated")) {
                if (str2.equals("Contents")) {
                    this.f18941c.getObjectSummaries().add(this.f18943e);
                    this.f18943e = null;
                    return;
                }
                return;
            }
            String strB = StringUtils.b(d());
            if (strB.startsWith("false")) {
                this.f18941c.setTruncated(false);
            } else {
                if (strB.startsWith("true")) {
                    this.f18941c.setTruncated(true);
                    return;
                }
                throw new IllegalStateException("Invalid value for IsTruncated field: " + strB);
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (!e("ListBucketResult")) {
                if (e("ListBucketResult", "Contents") && str2.equals("Owner")) {
                    this.f18944f = new Owner();
                    return;
                }
                return;
            }
            if (str2.equals("Contents")) {
                S3ObjectSummary s3ObjectSummary = new S3ObjectSummary();
                this.f18943e = s3ObjectSummary;
                s3ObjectSummary.b(this.f18941c.getBucketName());
            }
        }
    }

    public static class ListBucketInventoryConfigurationsHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ListBucketInventoryConfigurationsResult f18946c = new ListBucketInventoryConfigurationsResult();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private InventoryConfiguration f18947d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List f18948e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private InventoryDestination f18949f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private InventoryFilter f18950g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private InventoryS3BucketDestination f18951h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private InventorySchedule f18952i;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("ListInventoryConfigurationsResult")) {
                if (str2.equals("InventoryConfiguration")) {
                    if (this.f18946c.getInventoryConfigurationList() == null) {
                        this.f18946c.setInventoryConfigurationList(new ArrayList());
                    }
                    this.f18946c.getInventoryConfigurationList().add(this.f18947d);
                    this.f18947d = null;
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18946c.setTruncated("true".equals(d()));
                    return;
                } else if (str2.equals("ContinuationToken")) {
                    this.f18946c.setContinuationToken(d());
                    return;
                } else {
                    if (str2.equals("NextContinuationToken")) {
                        this.f18946c.setNextContinuationToken(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListInventoryConfigurationsResult", "InventoryConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18947d.setId(d());
                    return;
                }
                if (str2.equals("Destination")) {
                    this.f18947d.setDestination(this.f18949f);
                    this.f18949f = null;
                    return;
                }
                if (str2.equals("IsEnabled")) {
                    this.f18947d.setEnabled(Boolean.valueOf("true".equals(d())));
                    return;
                }
                if (str2.equals("Filter")) {
                    this.f18947d.setInventoryFilter(this.f18950g);
                    this.f18950g = null;
                    return;
                }
                if (str2.equals("IncludedObjectVersions")) {
                    this.f18947d.setIncludedObjectVersions(d());
                    return;
                }
                if (str2.equals("Schedule")) {
                    this.f18947d.setSchedule(this.f18952i);
                    this.f18952i = null;
                    return;
                } else {
                    if (str2.equals("OptionalFields")) {
                        this.f18947d.setOptionalFields(this.f18948e);
                        this.f18948e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination")) {
                if (str2.equals("S3BucketDestination")) {
                    this.f18949f.setS3BucketDestination(this.f18951h);
                    this.f18951h = null;
                    return;
                }
                return;
            }
            if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination", "S3BucketDestination")) {
                if (str2.equals("AccountId")) {
                    this.f18951h.setAccountId(d());
                    return;
                }
                if (str2.equals("Bucket")) {
                    this.f18951h.setBucketArn(d());
                    return;
                } else if (str2.equals("Format")) {
                    this.f18951h.setFormat(d());
                    return;
                } else {
                    if (str2.equals("Prefix")) {
                        this.f18951h.setPrefix(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18950g.setPredicate(new InventoryPrefixPredicate(d()));
                }
            } else if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Schedule")) {
                if (str2.equals("Frequency")) {
                    this.f18952i.setFrequency(d());
                }
            } else if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "OptionalFields") && str2.equals("Field")) {
                this.f18948e.add(d());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListInventoryConfigurationsResult")) {
                if (str2.equals("InventoryConfiguration")) {
                    this.f18947d = new InventoryConfiguration();
                    return;
                }
                return;
            }
            if (!e("ListInventoryConfigurationsResult", "InventoryConfiguration")) {
                if (e("ListInventoryConfigurationsResult", "InventoryConfiguration", "Destination") && str2.equals("S3BucketDestination")) {
                    this.f18951h = new InventoryS3BucketDestination();
                    return;
                }
                return;
            }
            if (str2.equals("Destination")) {
                this.f18949f = new InventoryDestination();
                return;
            }
            if (str2.equals("Filter")) {
                this.f18950g = new InventoryFilter();
            } else if (str2.equals("Schedule")) {
                this.f18952i = new InventorySchedule();
            } else if (str2.equals("OptionalFields")) {
                this.f18948e = new ArrayList();
            }
        }
    }

    public static class ListBucketMetricsConfigurationsHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ListBucketMetricsConfigurationsResult f18953c = new ListBucketMetricsConfigurationsResult();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MetricsConfiguration f18954d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private MetricsFilter f18955e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List f18956f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f18957g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f18958h;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("ListMetricsConfigurationsResult")) {
                if (str2.equals("MetricsConfiguration")) {
                    if (this.f18953c.getMetricsConfigurationList() == null) {
                        this.f18953c.setMetricsConfigurationList(new ArrayList());
                    }
                    this.f18953c.getMetricsConfigurationList().add(this.f18954d);
                    this.f18954d = null;
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18953c.setTruncated("true".equals(d()));
                    return;
                } else if (str2.equals("ContinuationToken")) {
                    this.f18953c.setContinuationToken(d());
                    return;
                } else {
                    if (str2.equals("NextContinuationToken")) {
                        this.f18953c.setNextContinuationToken(d());
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration")) {
                if (str2.equals("Id")) {
                    this.f18954d.setId(d());
                    return;
                } else {
                    if (str2.equals("Filter")) {
                        this.f18954d.setFilter(this.f18955e);
                        this.f18955e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter")) {
                if (str2.equals("Prefix")) {
                    this.f18955e.setPredicate(new MetricsPrefixPredicate(d()));
                    return;
                }
                if (str2.equals("Tag")) {
                    this.f18955e.setPredicate(new MetricsTagPredicate(new Tag(this.f18957g, this.f18958h)));
                    this.f18957g = null;
                    this.f18958h = null;
                    return;
                } else {
                    if (str2.equals("And")) {
                        this.f18955e.setPredicate(new MetricsAndOperator(this.f18956f));
                        this.f18956f = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18957g = d();
                    return;
                } else {
                    if (str2.equals("Value")) {
                        this.f18958h = d();
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "And")) {
                if (str2.equals("Prefix")) {
                    this.f18956f.add(new MetricsPrefixPredicate(d()));
                    return;
                } else {
                    if (str2.equals("Tag")) {
                        this.f18956f.add(new MetricsTagPredicate(new Tag(this.f18957g, this.f18958h)));
                        this.f18957g = null;
                        this.f18958h = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter", "And", "Tag")) {
                if (str2.equals("Key")) {
                    this.f18957g = d();
                } else if (str2.equals("Value")) {
                    this.f18958h = d();
                }
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListMetricsConfigurationsResult")) {
                if (str2.equals("MetricsConfiguration")) {
                    this.f18954d = new MetricsConfiguration();
                }
            } else if (e("ListMetricsConfigurationsResult", "MetricsConfiguration")) {
                if (str2.equals("Filter")) {
                    this.f18955e = new MetricsFilter();
                }
            } else if (e("ListMetricsConfigurationsResult", "MetricsConfiguration", "Filter") && str2.equals("And")) {
                this.f18956f = new ArrayList();
            }
        }
    }

    public static class ListMultipartUploadsHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final MultipartUploadListing f18959c = new MultipartUploadListing();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MultipartUpload f18960d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Owner f18961e;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("ListMultipartUploadsResult")) {
                if (str2.equals("Bucket")) {
                    this.f18959c.c(d());
                    return;
                }
                if (str2.equals("KeyMarker")) {
                    this.f18959c.f(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("Delimiter")) {
                    this.f18959c.d(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("Prefix")) {
                    this.f18959c.j(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("UploadIdMarker")) {
                    this.f18959c.l(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("NextKeyMarker")) {
                    this.f18959c.h(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("NextUploadIdMarker")) {
                    this.f18959c.i(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("MaxUploads")) {
                    this.f18959c.g(Integer.parseInt(d()));
                    return;
                }
                if (str2.equals("EncodingType")) {
                    this.f18959c.e(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18959c.k(Boolean.parseBoolean(d()));
                    return;
                } else {
                    if (str2.equals("Upload")) {
                        this.f18959c.b().add(this.f18960d);
                        this.f18960d = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListMultipartUploadsResult", "CommonPrefixes")) {
                if (str2.equals("Prefix")) {
                    this.f18959c.a().add(d());
                    return;
                }
                return;
            }
            if (!e("ListMultipartUploadsResult", "Upload")) {
                if (e("ListMultipartUploadsResult", "Upload", "Owner") || e("ListMultipartUploadsResult", "Upload", "Initiator")) {
                    if (str2.equals("ID")) {
                        this.f18961e.setId(XmlResponsesSaxParser.g(d()));
                        return;
                    } else {
                        if (str2.equals("DisplayName")) {
                            this.f18961e.setDisplayName(XmlResponsesSaxParser.g(d()));
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (str2.equals("Key")) {
                this.f18960d.c(d());
                return;
            }
            if (str2.equals("UploadId")) {
                this.f18960d.f(d());
                return;
            }
            if (str2.equals("Owner")) {
                this.f18960d.d(this.f18961e);
                this.f18961e = null;
            } else if (str2.equals("Initiator")) {
                this.f18960d.b(this.f18961e);
                this.f18961e = null;
            } else if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                this.f18960d.e(d());
            } else if (str2.equals("Initiated")) {
                this.f18960d.a(ServiceUtils.d(d()));
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListMultipartUploadsResult")) {
                if (str2.equals("Upload")) {
                    this.f18960d = new MultipartUpload();
                }
            } else if (e("ListMultipartUploadsResult", "Upload")) {
                if (str2.equals("Owner") || str2.equals("Initiator")) {
                    this.f18961e = new Owner();
                }
            }
        }
    }

    public static class ListObjectsV2Handler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ListObjectsV2Result f18962c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f18963d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private S3ObjectSummary f18964e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Owner f18965f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f18966g;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            String strA = null;
            if (a()) {
                if (str2.equals("ListBucketResult") && this.f18962c.e() && this.f18962c.c() == null) {
                    if (this.f18962c.d().isEmpty()) {
                        XmlResponsesSaxParser.f18851c.f("S3 response indicates truncated results, but contains no object summaries.");
                    } else {
                        strA = ((S3ObjectSummary) this.f18962c.d().get(this.f18962c.d().size() - 1)).a();
                    }
                    this.f18962c.l(strA);
                    return;
                }
                return;
            }
            if (!e("ListBucketResult")) {
                if (!e("ListBucketResult", "Contents")) {
                    if (!e("ListBucketResult", "Contents", "Owner")) {
                        if (e("ListBucketResult", "CommonPrefixes") && str2.equals("Prefix")) {
                            this.f18962c.b().add(XmlResponsesSaxParser.h(d(), this.f18963d));
                            return;
                        }
                        return;
                    }
                    if (str2.equals("ID")) {
                        this.f18965f.setId(d());
                        return;
                    } else {
                        if (str2.equals("DisplayName")) {
                            this.f18965f.setDisplayName(d());
                            return;
                        }
                        return;
                    }
                }
                if (str2.equals("Key")) {
                    String strD = d();
                    this.f18966g = strD;
                    this.f18964e.d(XmlResponsesSaxParser.h(strD, this.f18963d));
                    return;
                }
                if (str2.equals("LastModified")) {
                    this.f18964e.e(ServiceUtils.d(d()));
                    return;
                }
                if (str2.equals("ETag")) {
                    this.f18964e.c(ServiceUtils.f(d()));
                    return;
                }
                if (str2.equals("Size")) {
                    this.f18964e.g(XmlResponsesSaxParser.m(d()));
                    return;
                }
                if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                    this.f18964e.h(d());
                    return;
                } else {
                    if (str2.equals("Owner")) {
                        this.f18964e.f(this.f18965f);
                        this.f18965f = null;
                        return;
                    }
                    return;
                }
            }
            if (str2.equals("Name")) {
                this.f18962c.f(d());
                if (XmlResponsesSaxParser.f18851c.b()) {
                    XmlResponsesSaxParser.f18851c.a("Examining listing for bucket: " + this.f18962c.a());
                    return;
                }
                return;
            }
            if (str2.equals("Prefix")) {
                this.f18962c.m(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18963d));
                return;
            }
            if (str2.equals("MaxKeys")) {
                this.f18962c.k(XmlResponsesSaxParser.l(d()));
                return;
            }
            if (str2.equals("NextContinuationToken")) {
                this.f18962c.l(d());
                return;
            }
            if (str2.equals("ContinuationToken")) {
                this.f18962c.g(d());
                return;
            }
            if (str2.equals("StartAfter")) {
                this.f18962c.n(XmlResponsesSaxParser.h(d(), this.f18963d));
                return;
            }
            if (str2.equals("KeyCount")) {
                this.f18962c.j(XmlResponsesSaxParser.l(d()));
                return;
            }
            if (str2.equals("Delimiter")) {
                this.f18962c.h(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18963d));
                return;
            }
            if (str2.equals("EncodingType")) {
                this.f18962c.i(XmlResponsesSaxParser.g(d()));
                return;
            }
            if (!str2.equals("IsTruncated")) {
                if (str2.equals("Contents")) {
                    this.f18962c.d().add(this.f18964e);
                    this.f18964e = null;
                    return;
                }
                return;
            }
            String strB = StringUtils.b(d());
            if (strB.startsWith("false")) {
                this.f18962c.o(false);
            } else {
                if (strB.startsWith("true")) {
                    this.f18962c.o(true);
                    return;
                }
                throw new IllegalStateException("Invalid value for IsTruncated field: " + strB);
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (!e("ListBucketResult")) {
                if (e("ListBucketResult", "Contents") && str2.equals("Owner")) {
                    this.f18965f = new Owner();
                    return;
                }
                return;
            }
            if (str2.equals("Contents")) {
                S3ObjectSummary s3ObjectSummary = new S3ObjectSummary();
                this.f18964e = s3ObjectSummary;
                s3ObjectSummary.b(this.f18962c.a());
            }
        }
    }

    public static class ListPartsHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final PartListing f18967c = new PartListing();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private PartSummary f18968d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Owner f18969e;

        private Integer f(String str) {
            String strG = XmlResponsesSaxParser.g(d());
            if (strG == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(strG));
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (!e("ListPartsResult")) {
                if (!e("ListPartsResult", "Part")) {
                    if (e("ListPartsResult", "Owner") || e("ListPartsResult", "Initiator")) {
                        if (str2.equals("ID")) {
                            this.f18969e.setId(XmlResponsesSaxParser.g(d()));
                            return;
                        } else {
                            if (str2.equals("DisplayName")) {
                                this.f18969e.setDisplayName(XmlResponsesSaxParser.g(d()));
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (str2.equals("PartNumber")) {
                    this.f18968d.c(Integer.parseInt(d()));
                    return;
                }
                if (str2.equals("LastModified")) {
                    this.f18968d.b(ServiceUtils.d(d()));
                    return;
                } else if (str2.equals("ETag")) {
                    this.f18968d.a(ServiceUtils.f(d()));
                    return;
                } else {
                    if (str2.equals("Size")) {
                        this.f18968d.d(Long.parseLong(d()));
                        return;
                    }
                    return;
                }
            }
            if (str2.equals("Bucket")) {
                this.f18967c.b(d());
                return;
            }
            if (str2.equals("Key")) {
                this.f18967c.e(d());
                return;
            }
            if (str2.equals("UploadId")) {
                this.f18967c.l(d());
                return;
            }
            if (str2.equals("Owner")) {
                this.f18967c.h(this.f18969e);
                this.f18969e = null;
                return;
            }
            if (str2.equals("Initiator")) {
                this.f18967c.d(this.f18969e);
                this.f18969e = null;
                return;
            }
            if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                this.f18967c.j(d());
                return;
            }
            if (str2.equals("PartNumberMarker")) {
                this.f18967c.i(f(d()).intValue());
                return;
            }
            if (str2.equals("NextPartNumberMarker")) {
                this.f18967c.g(f(d()).intValue());
                return;
            }
            if (str2.equals("MaxParts")) {
                this.f18967c.f(f(d()).intValue());
                return;
            }
            if (str2.equals("EncodingType")) {
                this.f18967c.c(XmlResponsesSaxParser.g(d()));
                return;
            }
            if (str2.equals("IsTruncated")) {
                this.f18967c.k(Boolean.parseBoolean(d()));
            } else if (str2.equals("Part")) {
                this.f18967c.a().add(this.f18968d);
                this.f18968d = null;
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (e("ListPartsResult")) {
                if (str2.equals("Part")) {
                    this.f18968d = new PartSummary();
                } else if (str2.equals("Owner") || str2.equals("Initiator")) {
                    this.f18969e = new Owner();
                }
            }
        }
    }

    public static class ListVersionsHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final VersionListing f18970c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f18971d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private S3VersionSummary f18972e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Owner f18973f;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("ListVersionsResult")) {
                if (str2.equals("Name")) {
                    this.f18970c.j(d());
                    return;
                }
                if (str2.equals("Prefix")) {
                    this.f18970c.q(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18971d));
                    return;
                }
                if (str2.equals("KeyMarker")) {
                    this.f18970c.m(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18971d));
                    return;
                }
                if (str2.equals("VersionIdMarker")) {
                    this.f18970c.s(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("MaxKeys")) {
                    this.f18970c.n(Integer.parseInt(d()));
                    return;
                }
                if (str2.equals("Delimiter")) {
                    this.f18970c.k(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18971d));
                    return;
                }
                if (str2.equals("EncodingType")) {
                    this.f18970c.l(XmlResponsesSaxParser.g(d()));
                    return;
                }
                if (str2.equals("NextKeyMarker")) {
                    this.f18970c.o(XmlResponsesSaxParser.h(XmlResponsesSaxParser.g(d()), this.f18971d));
                    return;
                }
                if (str2.equals("NextVersionIdMarker")) {
                    this.f18970c.p(d());
                    return;
                }
                if (str2.equals("IsTruncated")) {
                    this.f18970c.r("true".equals(d()));
                    return;
                } else {
                    if (str2.equals("Version") || str2.equals("DeleteMarker")) {
                        this.f18970c.i().add(this.f18972e);
                        this.f18972e = null;
                        return;
                    }
                    return;
                }
            }
            if (e("ListVersionsResult", "CommonPrefixes")) {
                if (str2.equals("Prefix")) {
                    String strG = XmlResponsesSaxParser.g(d());
                    List listB = this.f18970c.b();
                    if (this.f18971d) {
                        strG = S3HttpUtils.a(strG);
                    }
                    listB.add(strG);
                    return;
                }
                return;
            }
            if (!e("ListVersionsResult", "Version") && !e("ListVersionsResult", "DeleteMarker")) {
                if (e("ListVersionsResult", "Version", "Owner") || e("ListVersionsResult", "DeleteMarker", "Owner")) {
                    if (str2.equals("ID")) {
                        this.f18973f.setId(d());
                        return;
                    } else {
                        if (str2.equals("DisplayName")) {
                            this.f18973f.setDisplayName(d());
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            if (str2.equals("Key")) {
                this.f18972e.e(XmlResponsesSaxParser.h(d(), this.f18971d));
                return;
            }
            if (str2.equals("VersionId")) {
                this.f18972e.j(d());
                return;
            }
            if (str2.equals("IsLatest")) {
                this.f18972e.d("true".equals(d()));
                return;
            }
            if (str2.equals("LastModified")) {
                this.f18972e.f(ServiceUtils.d(d()));
                return;
            }
            if (str2.equals("ETag")) {
                this.f18972e.b(ServiceUtils.f(d()));
                return;
            }
            if (str2.equals("Size")) {
                this.f18972e.h(Long.parseLong(d()));
                return;
            }
            if (str2.equals("Owner")) {
                this.f18972e.g(this.f18973f);
                this.f18973f = null;
            } else if (str2.equals(CreateBucketRequest.TAB_STORAGECLASS)) {
                this.f18972e.i(d());
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
            if (!e("ListVersionsResult")) {
                if ((e("ListVersionsResult", "Version") || e("ListVersionsResult", "DeleteMarker")) && str2.equals("Owner")) {
                    this.f18973f = new Owner();
                    return;
                }
                return;
            }
            if (str2.equals("Version")) {
                S3VersionSummary s3VersionSummary = new S3VersionSummary();
                this.f18972e = s3VersionSummary;
                s3VersionSummary.a(this.f18970c.a());
            } else if (str2.equals("DeleteMarker")) {
                S3VersionSummary s3VersionSummary2 = new S3VersionSummary();
                this.f18972e = s3VersionSummary2;
                s3VersionSummary2.a(this.f18970c.a());
                this.f18972e.c(true);
            }
        }
    }

    public static class RequestPaymentConfigurationHandler extends AbstractHandler {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f18974c = null;

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void b(String str, String str2, String str3) {
            if (e("RequestPaymentConfiguration") && str2.equals("Payer")) {
                this.f18974c = d();
            }
        }

        @Override // com.amazonaws.services.s3.model.transform.AbstractHandler
        protected void c(String str, String str2, String str3, Attributes attributes) {
        }
    }

    public XmlResponsesSaxParser() throws AmazonClientException {
        this.f18852a = null;
        try {
            this.f18852a = XMLReaderFactory.createXMLReader();
        } catch (SAXException e11) {
            System.setProperty("org.xml.sax.driver", "org.xmlpull.v1.sax2.Driver");
            try {
                this.f18852a = XMLReaderFactory.createXMLReader();
            } catch (SAXException unused) {
                throw new AmazonClientException("Couldn't initialize a sax driver for the XMLReader", e11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String g(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String h(String str, boolean z10) {
        return z10 ? S3HttpUtils.a(str) : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String i(String str, Attributes attributes) {
        if (!StringUtils.a(str) && attributes != null) {
            for (int i11 = 0; i11 < attributes.getLength(); i11++) {
                if (attributes.getQName(i11).trim().equalsIgnoreCase(str.trim())) {
                    return attributes.getValue(i11);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e11) {
            f18851c.e("Unable to parse integer value '" + str + "'", e11);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long m(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e11) {
            f18851c.e("Unable to parse long value '" + str + "'", e11);
            return -1L;
        }
    }

    public CompleteMultipartUploadHandler j(InputStream inputStream) throws IOException {
        CompleteMultipartUploadHandler completeMultipartUploadHandler = new CompleteMultipartUploadHandler();
        n(completeMultipartUploadHandler, inputStream);
        return completeMultipartUploadHandler;
    }

    public InitiateMultipartUploadHandler k(InputStream inputStream) throws IOException {
        InitiateMultipartUploadHandler initiateMultipartUploadHandler = new InitiateMultipartUploadHandler();
        n(initiateMultipartUploadHandler, inputStream);
        return initiateMultipartUploadHandler;
    }

    protected void n(DefaultHandler defaultHandler, InputStream inputStream) throws IOException {
        try {
            Log log = f18851c;
            if (log.b()) {
                log.a("Parsing XML response document with handler: " + defaultHandler.getClass());
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
            this.f18852a.setContentHandler(defaultHandler);
            this.f18852a.setErrorHandler(defaultHandler);
            this.f18852a.parse(new InputSource(bufferedReader));
        } catch (IOException e11) {
            throw e11;
        } catch (Throwable th2) {
            try {
                inputStream.close();
            } catch (IOException e12) {
                if (f18851c.h()) {
                    f18851c.e("Unable to close response InputStream up after XML parse failure", e12);
                }
            }
            throw new AmazonClientException("Failed to parse XML document with handler " + defaultHandler.getClass(), th2);
        }
    }
}
