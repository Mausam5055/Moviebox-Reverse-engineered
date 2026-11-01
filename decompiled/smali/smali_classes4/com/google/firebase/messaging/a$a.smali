.class final Lcom/google/firebase/messaging/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/messaging/a$a;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;

.field private static final g:Lbc/b;

.field private static final h:Lbc/b;

.field private static final i:Lbc/b;

.field private static final j:Lbc/b;

.field private static final k:Lbc/b;

.field private static final l:Lbc/b;

.field private static final m:Lbc/b;

.field private static final n:Lbc/b;

.field private static final o:Lbc/b;

.field private static final p:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/firebase/messaging/a$a;

    invoke-direct {v0}, Lcom/google/firebase/messaging/a$a;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/a$a;->a:Lcom/google/firebase/messaging/a$a;

    const-string v0, "projectNumber"

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

    sput-object v0, Lcom/google/firebase/messaging/a$a;->b:Lbc/b;

    const-string v0, "messageId"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->c:Lbc/b;

    const-string v0, "instanceId"

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

    sput-object v0, Lcom/google/firebase/messaging/a$a;->d:Lbc/b;

    const-string v0, "messageType"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->e:Lbc/b;

    const-string v0, "sdkPlatform"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->f:Lbc/b;

    const-string v0, "packageName"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->g:Lbc/b;

    const-string v0, "collapseKey"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->h:Lbc/b;

    const-string v0, "priority"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->i:Lbc/b;

    const-string v0, "ttl"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->j:Lbc/b;

    const-string v0, "topic"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->k:Lbc/b;

    const-string v0, "bulkId"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->l:Lbc/b;

    const-string v0, "event"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->m:Lbc/b;

    const-string v0, "analyticsLabel"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->n:Lbc/b;

    const-string v0, "campaignId"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->o:Lbc/b;

    const-string v0, "composerLabel"

    invoke-static {v0}, Lbc/b;->a(Ljava/lang/String;)Lbc/b$b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/encoders/proto/a;->b()Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/a;->c(I)Lcom/google/firebase/encoders/proto/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/a;->a()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbc/b$b;->b(Ljava/lang/annotation/Annotation;)Lbc/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lbc/b$b;->a()Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/a$a;->p:Lbc/b;

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

    check-cast p1, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/a$a;->b(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;Lbc/d;)V
    .locals 3

    sget-object v0, Lcom/google/firebase/messaging/a$a;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->l()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->i()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->m()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->g:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->h:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->i:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->k()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->j:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->o()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->k:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->l:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->m:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->f()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->n:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->o:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/firebase/messaging/a$a;->p:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
