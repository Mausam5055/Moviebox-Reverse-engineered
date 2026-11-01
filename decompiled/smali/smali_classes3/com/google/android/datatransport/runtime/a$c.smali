.class final Lcom/google/android/datatransport/runtime/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/runtime/a$c;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/datatransport/runtime/a$c;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/a$c;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/a$c;->a:Lcom/google/android/datatransport/runtime/a$c;

    const-string v0, "eventsDroppedCount"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/a$c;->b:Lbc/b;

    const-string v0, "reason"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/a$c;->c:Lbc/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/a$c;->b(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;Lbc/d;)V
    .locals 3

    sget-object v0, Lcom/google/android/datatransport/runtime/a$c;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->a()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/runtime/a$c;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->b()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
