.class public final Lhi/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lhi/c;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhi/c;

    invoke-direct {v0}, Lhi/c;-><init>()V

    sput-object v0, Lhi/c;->a:Lhi/c;

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

    sget-boolean v0, Lhi/c;->b:Z

    return v0
.end method

.method public final b(Z)V
    .locals 0

    sput-boolean p1, Lhi/c;->b:Z

    return-void
.end method
