.class public final Lri/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lri/a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lri/a;

    invoke-direct {v0}, Lri/a;-><init>()V

    sput-object v0, Lri/a;->a:Lri/a;

    const/4 v0, 0x1

    sput-boolean v0, Lri/a;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-boolean v0, Lri/a;->b:Z

    return v0
.end method
