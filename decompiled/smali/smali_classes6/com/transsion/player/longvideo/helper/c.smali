.class public final Lcom/transsion/player/longvideo/helper/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lho/j;

.field private final b:J

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Lcom/transsion/player/longvideo/ui/LongVodUiType;


# direct methods
.method public constructor <init>(Lho/j;)V
    .locals 2

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/c;->a:Lho/j;

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/transsion/player/longvideo/helper/c;->b:J

    const/high16 p1, 0x41c00000    # 24.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/player/longvideo/helper/c;->c:I

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/player/longvideo/helper/c;->d:I

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/player/longvideo/helper/c;->e:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/transsion/player/longvideo/helper/c;->f:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/player/longvideo/helper/c;->h:Z

    sget-object p1, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/c;->i:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/player/longvideo/helper/c;->g:Z

    return v0
.end method

.method public final c(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 1

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e(JJ)V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
