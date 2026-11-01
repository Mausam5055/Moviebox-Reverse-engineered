.class public final Ldp/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Ldp/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldp/a$a;

    invoke-direct {v0}, Ldp/a$a;-><init>()V

    sput-object v0, Ldp/a$a;->a:Ldp/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/postdetail/ui/adapter/i;Ljava/lang/String;Ljava/lang/String;Z)Ldp/a;
    .locals 9

    const-string v0, "context"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subpageName"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldp/e;

    move-object v1, v0

    move-object v4, p3

    move-object v5, p4

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Ldp/e;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/postdetail/ui/adapter/i;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
