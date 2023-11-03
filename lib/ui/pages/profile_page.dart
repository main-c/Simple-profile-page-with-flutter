import 'package:flutter/material.dart';
import 'package:screen/models/transaction.dart';
import 'package:screen/ui/widgets/profile_button.dart';
import 'package:screen/ui/widgets/transaction_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget _buildTransactionListTile(List<Transaction> currentTransactions) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: currentTransactions.length,
      itemBuilder: (context, index) {
        return TransactionTile(
          transaction: currentTransactions[index],
        );
      },
      separatorBuilder: (context, builder) => SizedBox(
        height: 10,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF2C3786),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
                backgroundColor: Color(0xFF2C3786),
                expandedHeight: 200.0,
                floating: true,
                // stretch: true,
                // pinned: true,
                snap: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            leading: const CircleAvatar(
                                backgroundImage: NetworkImage(
                              "https://picsum.photos/200/",
                            )),
                            title: Text('Hello',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        fontSize: 12, color: Colors.white)),
                            subtitle: Text(
                              'One Achmad',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          Column(
                            children: [
                              Text("Balance",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                              Text("\$126,720",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const ProfileMenuButton(
                                icon: Icon(
                                  Icons.send,
                                  color: Color(0xFF42486E),
                                  size: 18,
                                ),
                                text: "Send",
                              ),
                              const ProfileMenuButton(
                                icon: Icon(
                                  Icons.transfer_within_a_station,
                                  color: Color(0xFF42486E),
                                  size: 18,
                                ),
                                text: "Top Up",
                              ),
                              ProfileMenuButton(
                                icon: Icon(
                                  Icons.payment,
                                  color: Color(0xFF42486E),
                                  size: 18,
                                ),
                                text: "Pay",
                              ),
                              ProfileMenuButton(
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: Color(0xFF42486E),
                                  size: 18,
                                ),
                                text: "More",
                              ),
                            ],
                          )
                        ]),
                    color: Color(0xFF2C3786),
                    height: 130,
                  ),
                )),
            SliverList(
              delegate: SliverChildBuilderDelegate((_, __) {
                return Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(children: [
                      Container(
                        width: 30,
                        child: const Divider(
                          height: 20,
                          thickness: 3,
                        ),
                      ),
                      ListTile(
                          title: Text('Last Transaction',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500)),
                          trailing: TextButton(
                            onPressed: () {},
                            child: Text("See All",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        fontSize: 14,
                                        color: Color(0xFF42486E))),
                          )),
                      _buildTransactionListTile(
                          Transaction.currentTransactions),
                    ]));
              }, childCount: 1),
            ),
          ],
        ),
      ),
    );
  }
}
