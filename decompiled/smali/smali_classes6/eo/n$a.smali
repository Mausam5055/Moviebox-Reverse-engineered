.class public final Leo/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leo/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Leo/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leo/n$a;

    invoke-direct {v0}, Leo/n$a;-><init>()V

    sput-object v0, Leo/n$a;->a:Leo/n$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Leo/n;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Leo/m;

    invoke-direct {v0, p1, p2}, Leo/m;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-object v0
.end method
