import 'package:grpc/grpc.dart';
import 'package:yunzhou_vpn_desktop/output/admin.pbgrpc.dart';
import 'package:yunzhou_vpn_desktop/output/user.pbgrpc.dart';

class GrpcClient {
  GrpcClient._internal() {
    userClient = createUserClient();
    guestClient = createGuestClient();
    adminClient = createAdminClient();
  }

  static final _shared = GrpcClient._internal();
  static GrpcClient get shared => _shared;

  late JSQ_MEMBERClient userClient;
  late AdminClient adminClient;
  late JSQ_GUESTClient guestClient;

  JSQ_MEMBERClient createUserClient() {
    final channel = ClientChannel(
      '123.254.107.244',
      port: 9005,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    return JSQ_MEMBERClient(channel);
  }

  JSQ_GUESTClient createGuestClient() {
    final channel = ClientChannel(
      '123.254.107.244',
      port: 9005,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    return JSQ_GUESTClient(channel);
  }

  AdminClient createAdminClient() {
    final channel = ClientChannel(
      '123.254.107.244',
      port: 9000,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    return AdminClient(channel);
  }
}
