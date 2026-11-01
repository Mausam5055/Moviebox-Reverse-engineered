.class final Lcom/google/firebase/sessions/SessionDatastoreImpl$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SessionDatastoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/sessions/SessionDatastoreImpl$b;

.field private static final b:Landroidx/datastore/preferences/core/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;

    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;->a:Lcom/google/firebase/sessions/SessionDatastoreImpl$b;

    const-string v0, "session_id"

    invoke-static {v0}, Landroidx/datastore/preferences/core/e;->g(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;->b:Landroidx/datastore/preferences/core/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/datastore/preferences/core/c$a;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;->b:Landroidx/datastore/preferences/core/c$a;

    return-object v0
.end method
