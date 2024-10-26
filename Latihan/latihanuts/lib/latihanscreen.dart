import 'package:flutter/material.dart';

class Latihanscreen extends StatelessWidget {
  const Latihanscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan UTS"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text(
                "INFORMATIKA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              )),
              const SizedBox(
                height: 8,
              ),
              Image.asset("images/latihan.jpg",
                  height: 250, width: double.infinity, fit: BoxFit.cover),
              const Text("Universitas Multi Data Palembang",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
              const SizedBox(
                height: 8,
              ),
              const Text("Kota Palembang, Prov, Sumatera Selatan",
                  style: TextStyle(fontSize: 18)),
              const SizedBox(
                height: 16,
              ),
              // Area Container
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 122, 26, 26),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // baris isi info
                      const Row(
                        children: [
                          // status dan akreditasi
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Aktif",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Akreditasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Unggul",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ),
                          // tgl berdiri dan jumlah
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tanggal Berdiri",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "9 April 2021",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Jumlah Mahasiswa",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "5000",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      // baris isi kontak

                      Row(
                        children: [
                          // Kolom telepon
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.phone, color: Colors.black),
                                    const SizedBox(width: 8),
                                    Flexible(
                                        child: Text(
                                      "0711-3764-00",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // Kolom email
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.email, color: Colors.amber[100]),
                                    const SizedBox(width: 8),
                                    Flexible(
                                        child: Text(
                                      "kuliahumdp@mdp.ac.id",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          // Kolom website
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.link, color: Colors.blue[100]),
                                    const SizedBox(width: 8),
                                    Flexible(
                                        child: Text(
                                      "mdp.ac.id",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alamat"),
                      Text(
                        "Jl.Rajawali",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 97, 25, 25),
                        ),
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Center the content horizontally
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // Center the content vertically
                          children: [
                            Text(
                              "Lihat Map",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
