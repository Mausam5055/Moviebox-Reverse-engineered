.class public final Lpc/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lpc/a;->a:Ljava/lang/Boolean;

    const-string v0, "21.0.3"

    sput-object v0, Lpc/a;->b:Ljava/lang/String;

    const-string v0, "FIREPERF"

    sput-object v0, Lpc/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
