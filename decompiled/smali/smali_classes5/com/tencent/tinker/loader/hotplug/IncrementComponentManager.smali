.class public final Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;
    }
.end annotation


# static fields
.field private static final ACTIVITY_INFO_ATTR_TRANSLATOR:Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLASS_NAME_TO_ACTIVITY_INFO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLASS_NAME_TO_INTENT_FILTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static volatile sInitialized:Z

.field private static sPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_ACTIVITY_INFO_MAP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_INTENT_FILTER_MAP:Ljava/util/Map;

    new-instance v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$1;

    invoke-direct {v0}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$1;-><init>()V

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->ACTIVITY_INFO_ATTR_TRANSLATOR:Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized ensureInitialized()V
    .locals 3

    const-class v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized!!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getMetaContentMap()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "assets/inc_component_meta.txt"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Tinker.IncrementCompMgr"

    const-string p1, "package has no incremental component meta, skip init."

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    :try_start_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    :goto_1
    sput-object p0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->sContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->sPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getMetaContentMap()Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "assets/inc_component_meta.txt"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_2
    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0, v2}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->parseActivity(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    sget-object v4, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_ACTIVITY_INFO_MAP:Ljava/util/Map;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_4
    const-string v4, "service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const-string v4, "receiver"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, "provider"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_2

    :cond_7
    sput-boolean v4, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->sInitialized:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :try_start_5
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return v4

    :catchall_3
    move-exception p0

    move-object v2, p1

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v2, p1

    :goto_4
    :try_start_6
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    if-eqz v2, :cond_8

    :try_start_7
    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :cond_8
    :try_start_8
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/lang/Object;)V

    throw p0

    :goto_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public static isIncrementActivity(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->ensureInitialized()V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_ACTIVITY_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static declared-synchronized parseActivity(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/pm/ActivityInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v3, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->sPackageName:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v4, -0x1

    iput v4, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v1, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    iput v3, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v2, v1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->ACTIVITY_INFO_ATTR_TRANSLATOR:Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;

    invoke-virtual {v2, p0, v3, p1, v1}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;->translate(Landroid/content/Context;ILorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-gt v5, v2, :cond_2

    goto :goto_2

    :cond_2
    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p0, v3, p1}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->parseIntentFilter(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_4
    const-string v4, "meta-data"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, v1, p1}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->parseMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    :goto_2
    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized parseIntentFilter(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    const-class v1, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "priority"

    const/4 v4, 0x0

    invoke-interface {p2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    const-string v3, "autoVerify"

    invoke-interface {p2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :try_start_1
    const-class v5, Landroid/content/IntentFilter;

    const-string v6, "setAutoVerify"

    new-array v7, v0, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, p0

    invoke-static {v5, v6, v7}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "true"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v3, v6, p0

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    :try_start_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    :cond_2
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v0, :cond_10

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-gt v7, v3, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string v6, "category"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, "name"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v6, "data"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "mimeType"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_7

    :try_start_3
    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "bad mimeType"

    invoke-direct {p1, v0, p2, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    :goto_2
    const-string v5, "scheme"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_8
    const-string v5, "ssp"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v5, p0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_9
    const-string v5, "sspPrefix"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v2, v5, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_a
    const-string v5, "sspPattern"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_b

    invoke-virtual {v2, v5, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_b
    const-string v5, "host"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "port"

    invoke-interface {p2, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_c

    invoke-virtual {v2, v5, v7}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v5, "path"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v2, v5, p0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_d
    const-string v5, "pathPrefix"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v2, v5, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_e
    const-string v5, "pathPattern"

    invoke-interface {p2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v2, v5, v6}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    :cond_f
    :goto_3
    invoke-static {p2}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :cond_10
    :goto_4
    sget-object p0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_INTENT_FILTER_MAP:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    return-void

    :goto_5
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method private static declared-synchronized parseMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-class p0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;

    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-interface {p2, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v2, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static queryActivityInfo(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 1

    invoke-static {}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->ensureInitialized()V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_ACTIVITY_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static resolveIntent(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 17

    invoke-static {}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->ensureInitialized()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_ACTIVITY_INFO_MAP:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    move-object v6, v2

    goto/16 :goto_3

    :cond_1
    sget-object v0, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_INTENT_FILTER_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v1

    move-object v4, v2

    move-object v6, v4

    move v7, v3

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentFilter;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v15

    const-string v16, "Tinker.IncrementCompMgr"

    move-object v10, v8

    invoke-virtual/range {v10 .. v16}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x3

    if-eq v10, v11, :cond_3

    const/4 v11, -0x4

    if-eq v10, v11, :cond_3

    const/4 v11, -0x2

    if-eq v10, v11, :cond_3

    if-eq v10, v1, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    move v11, v3

    :goto_2
    invoke-virtual {v8}, Landroid/content/IntentFilter;->getPriority()I

    move-result v12

    if-eqz v11, :cond_2

    if-le v12, v5, :cond_2

    move-object v6, v8

    move-object v4, v9

    move v7, v10

    move v5, v12

    goto :goto_1

    :cond_4
    move-object v0, v4

    move v1, v5

    move v3, v7

    :goto_3
    if-eqz v0, :cond_5

    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    sget-object v4, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->CLASS_NAME_TO_ACTIVITY_INFO_MAP:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v6, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iput v3, v2, Landroid/content/pm/ResolveInfo;->match:I

    iput v1, v2, Landroid/content/pm/ResolveInfo;->priority:I

    sget-object v1, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->sPackageName:Ljava/lang/String;

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->icon:I

    iput v1, v2, Landroid/content/pm/ResolveInfo;->icon:I

    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    :cond_5
    return-object v2
.end method

.method private static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method
