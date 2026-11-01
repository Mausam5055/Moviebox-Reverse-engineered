.class final Lcom/transsion/search_pugc/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search_pugc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/transsion/search_pugc/g$a;

.field private static final b:Landroidx/lifecycle/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/search_pugc/g$a;

    invoke-direct {v0}, Lcom/transsion/search_pugc/g$a;-><init>()V

    sput-object v0, Lcom/transsion/search_pugc/g$a;->a:Lcom/transsion/search_pugc/g$a;

    new-instance v1, Landroidx/lifecycle/w;

    invoke-direct {v1, v0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    sput-object v1, Lcom/transsion/search_pugc/g$a;->b:Landroidx/lifecycle/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    sget-object v0, Lcom/transsion/search_pugc/g$a;->b:Landroidx/lifecycle/w;

    return-object v0
.end method
