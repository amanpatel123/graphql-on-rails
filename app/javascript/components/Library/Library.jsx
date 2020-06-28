import React from 'react';
import { useItemsQuery } from '../../data/query/ItemsQuery';

const Library = () => {
  const {data, loading} = useItemsQuery();
  return (
    <div>
      {loading
        ? 'loading...'
        : data.items.map(({ title, id, user }) => (
            <div key={id}>
              <b>{title}</b> {user ? `added by ${user.email}` : null}
            </div>
          ))}
  </div>
  );
};

export { Library };