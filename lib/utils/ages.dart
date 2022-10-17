class Age {
  const Age(
    this.id,
    this.name,
  );
  final int id;
  final String name;
}

const masterAges = <Age>[
  Age(1, '10代'),
  Age(2, '20代'),
  Age(3, '30代'),
  Age(4, '40代'),
  Age(5, '50代'),
  Age(6, '60代以上'),
];
