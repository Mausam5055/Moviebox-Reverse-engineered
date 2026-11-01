.class Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$1;
.super Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$AttrTranslator;-><init>(Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$1;)V

    return-void
.end method

.method private parseLaunchMode(Ljava/lang/String;)I
    .locals 3

    const-string v0, "standard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "singleTop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v0, "singleTask"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-string v0, "singleInstance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown launchMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Tinker.IncrementCompMgr"

    invoke-static {v2, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private parseScreenOrientation(Ljava/lang/String;)I
    .locals 2

    const-string v0, "unspecified"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "behind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const-string v0, "reverseLandscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0x8

    return p1

    :cond_4
    const-string v0, "reversePortrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x9

    return p1

    :cond_5
    const-string v0, "sensorLandscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    :cond_6
    const-string v0, "sensorPortrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x7

    return p1

    :cond_7
    const-string v0, "sensor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x4

    return p1

    :cond_8
    const-string v0, "fullSensor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xa

    return p1

    :cond_9
    const-string v0, "nosensor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x5

    return p1

    :cond_a
    const-string v0, "user"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x2

    return p1

    :cond_b
    const-string v0, "fullUser"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0xd

    return p1

    :cond_c
    const-string v0, "locked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0xe

    return p1

    :cond_d
    const-string v0, "userLandscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0xb

    return p1

    :cond_e
    const-string v0, "userPortrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p1, 0xc

    return p1

    :cond_f
    return v1
.end method


# virtual methods
.method onInit(Landroid/content/Context;ILorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    if-nez p2, :cond_1

    :try_start_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, "activity"

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected xml parser state when parsing incremental component manifest."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method onTranslate(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V
    .locals 3

    const-string p2, "name"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x2e

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_0
    iput-object p4, p5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string p2, "parentActivityName"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iput-object p4, p5, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string p2, "exported"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "true"

    if-eqz p2, :cond_4

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p5, Landroid/content/pm/ActivityInfo;->exported:Z

    goto/16 :goto_1

    :cond_4
    const-string p2, "launchMode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p4}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$1;->parseLaunchMode(Ljava/lang/String;)I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->launchMode:I

    goto/16 :goto_1

    :cond_5
    const-string p2, "theme"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p3, "style"

    invoke-virtual {p2, p4, p3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->theme:I

    goto/16 :goto_1

    :cond_6
    const-string p2, "uiOptions"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->uiOptions:I

    goto/16 :goto_1

    :cond_7
    const-string p2, "permission"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p4, p5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string p2, "taskAffinity"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iput-object p4, p5, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string p2, "multiprocess"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_a
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_b
    const-string p2, "finishOnTaskLaunch"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_c
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_d
    const-string p2, "clearTaskOnLaunch"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_e
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_f
    const-string p2, "noHistory"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_10
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_11
    const-string p2, "alwaysRetainTaskState"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_12
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p1, p1, -0x9

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_13
    const-string p2, "stateNotNeeded"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_14
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_15
    const-string p2, "excludeFromRecents"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_16
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_17
    const-string p2, "allowTaskReparenting"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_18
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p1, p1, -0x41

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_19
    const-string p2, "finishOnCloseSystemDialogs"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_1a
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p1, p1, -0x101

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_1b
    const-string p2, "showOnLockScreen"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-class v2, Landroid/content/pm/ActivityInfo;

    if-nez p2, :cond_33

    const-string p2, "showForAllUsers"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const-string p2, "immersive"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_1d
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_1e
    const-string p2, "hardwareAccelerated"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_1f
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p1, p1, -0x201

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_20
    const-string p2, "documentLaunchMode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-static {p4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    goto/16 :goto_1

    :cond_21
    const-string p2, "maxRecents"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-static {p4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->maxRecents:I

    goto/16 :goto_1

    :cond_22
    const-string p2, "configChanges"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-static {p4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto/16 :goto_1

    :cond_23
    const-string p2, "windowSoftInputMode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-static {p4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->softInputMode:I

    goto/16 :goto_1

    :cond_24
    const-string p2, "persistableMode"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-static {p4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->persistableMode:I

    goto/16 :goto_1

    :cond_25
    const-string p2, "allowEmbedded"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    const-string p1, "FLAG_ALLOW_EMBEDDED"

    invoke-static {v2, p1, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->getValueOfStaticIntField(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_26

    iget p2, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr p1, p2

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_26
    iget p2, p5, Landroid/content/pm/ActivityInfo;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_27
    const-string p2, "autoRemoveFromRecents"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_28
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p1, p1, -0x2001

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_29
    const-string p2, "relinquishTaskIdentity"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_2a
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_2b
    const-string p2, "resumeWhilePausing"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_2c
    iget p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto/16 :goto_1

    :cond_2d
    const-string p2, "screenOrientation"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-direct {p0, p4}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$1;->parseScreenOrientation(Ljava/lang/String;)I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto/16 :goto_1

    :cond_2e
    const-string p2, "label"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "string"

    invoke-static {}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->access$100()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p4, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-eqz v1, :cond_2f

    iput v1, p5, Landroid/content/pm/ActivityInfo;->labelRes:I

    goto :goto_1

    :cond_2f
    iput-object p4, p5, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_30
    const-string p2, "icon"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_31

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->icon:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_31
    const-string p2, "banner"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->banner:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_32
    const-string p2, "logo"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p5, Landroid/content/pm/ActivityInfo;->logo:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :cond_33
    :goto_0
    const-string p1, "FLAG_SHOW_FOR_ALL_USERS"

    invoke-static {v2, p1, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->getValueOfStaticIntField(Ljava/lang/Class;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_34

    iget p2, p5, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr p1, p2

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_1

    :cond_34
    iget p2, p5, Landroid/content/pm/ActivityInfo;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p5, Landroid/content/pm/ActivityInfo;->flags:I

    :catchall_1
    :cond_35
    :goto_1
    return-void
.end method

.method bridge synthetic onTranslate(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p5, Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {p0 .. p5}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager$1;->onTranslate(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method
