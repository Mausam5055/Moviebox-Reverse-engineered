.class public final Lks/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lks/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lks/b;

    invoke-direct {v0}, Lks/b;-><init>()V

    sput-object v0, Lks/b;->a:Lks/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lks/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
