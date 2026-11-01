.class public final enum Lcom/mbridge/msdk/video/dynview/error/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/video/dynview/error/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/mbridge/msdk/video/dynview/error/a;

.field public static final enum d:Lcom/mbridge/msdk/video/dynview/error/a;

.field public static final enum e:Lcom/mbridge/msdk/video/dynview/error/a;

.field public static final enum f:Lcom/mbridge/msdk/video/dynview/error/a;

.field public static final enum g:Lcom/mbridge/msdk/video/dynview/error/a;

.field public static final enum h:Lcom/mbridge/msdk/video/dynview/error/a;

.field private static final synthetic i:[Lcom/mbridge/msdk/video/dynview/error/a;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v1, -0x1

    const-string v2, "ViewOption is null"

    const-string v3, "NOT_FOUND_VIEWOPTION"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/mbridge/msdk/video/dynview/error/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/video/dynview/error/a;->c:Lcom/mbridge/msdk/video/dynview/error/a;

    new-instance v0, Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v1, -0x2

    const-string v2, "Context is null"

    const-string v3, "NOT_FOUND_CONTEXT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/mbridge/msdk/video/dynview/error/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/video/dynview/error/a;->d:Lcom/mbridge/msdk/video/dynview/error/a;

    new-instance v0, Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v1, -0x3

    const-string v2, "layout xml name is null"

    const-string v3, "NOT_FOUND_LAYOUTNAME"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/mbridge/msdk/video/dynview/error/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/video/dynview/error/a;->e:Lcom/mbridge/msdk/video/dynview/error/a;

    new-instance v0, Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v1, -0x4

    const-string v2, "Campaign size only one"

    const-string v3, "CAMPAIGNEX_IS_NULL"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/mbridge/msdk/video/dynview/error/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/video/dynview/error/a;->f:Lcom/mbridge/msdk/video/dynview/error/a;

    new-instance v0, Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v1, -0x5

    const-string v2, "view create error"

    const-string v3, "VIEW_CREATE_ERROR"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/mbridge/msdk/video/dynview/error/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/video/dynview/error/a;->g:Lcom/mbridge/msdk/video/dynview/error/a;

    new-instance v0, Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v1, -0x6

    const-string v2, "rootview is null"

    const-string v3, "NOT_FOUND_ROOTVIEW"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/mbridge/msdk/video/dynview/error/a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/video/dynview/error/a;->h:Lcom/mbridge/msdk/video/dynview/error/a;

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/error/a;->a()[Lcom/mbridge/msdk/video/dynview/error/a;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/video/dynview/error/a;->i:[Lcom/mbridge/msdk/video/dynview/error/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mbridge/msdk/video/dynview/error/a;->a:I

    iput-object p4, p0, Lcom/mbridge/msdk/video/dynview/error/a;->b:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lcom/mbridge/msdk/video/dynview/error/a;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mbridge/msdk/video/dynview/error/a;

    sget-object v1, Lcom/mbridge/msdk/video/dynview/error/a;->c:Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/video/dynview/error/a;->d:Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/video/dynview/error/a;->e:Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/video/dynview/error/a;->f:Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/video/dynview/error/a;->g:Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/video/dynview/error/a;->h:Lcom/mbridge/msdk/video/dynview/error/a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/video/dynview/error/a;
    .locals 1

    const-class v0, Lcom/mbridge/msdk/video/dynview/error/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/video/dynview/error/a;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/video/dynview/error/a;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/video/dynview/error/a;->i:[Lcom/mbridge/msdk/video/dynview/error/a;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/video/dynview/error/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/video/dynview/error/a;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/error/a;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/error/a;->b:Ljava/lang/String;

    return-object v0
.end method
