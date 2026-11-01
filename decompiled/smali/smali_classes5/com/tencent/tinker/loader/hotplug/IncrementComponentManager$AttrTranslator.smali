.class abstract Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AttrTranslator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method onInit(Landroid/content/Context;ILorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method abstract onTranslate(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT_RESU",
            "LT;",
            ")V"
        }
    .end annotation
.end method

.method final translate(Landroid/content/Context;ILorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT_RESU",
            "LT;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;->onInit(Landroid/content/Context;ILorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;->onTranslate(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
