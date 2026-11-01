.class public final Lqg/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lqg/a;

.field private static b:I

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqg/a;

    invoke-direct {v0}, Lqg/a;-><init>()V

    sput-object v0, Lqg/a;->a:Lqg/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    sput p1, Lqg/a;->b:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    sput-wide p1, Lqg/a;->c:J

    return-void
.end method
