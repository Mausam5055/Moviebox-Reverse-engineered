.class public final Lcom/transsion/shorttv/subtitle/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/subtitle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/transsion/shorttv/subtitle/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv/subtitle/a$a;

    invoke-direct {v0}, Lcom/transsion/shorttv/subtitle/a$a;-><init>()V

    sput-object v0, Lcom/transsion/shorttv/subtitle/a$a;->a:Lcom/transsion/shorttv/subtitle/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/FragmentActivity;Lms/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljs/e;Ljava/lang/String;)Lcom/transsion/shorttv/subtitle/a;
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epItem"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;-><init>(Landroidx/fragment/app/FragmentActivity;Lms/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljs/e;Ljava/lang/String;)V

    return-object v0
.end method
